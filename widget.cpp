#include <QFileDialog>
#include <opencv/cv.h>
#include <opencv/highgui.h>
#include <opencv2/imgcodecs/imgcodecs.hpp>
#include <opencv2/objdetect/objdetect.hpp>
#include "widget.h"
#include "ui_widget.h"

using namespace cv;

Widget::Widget(QWidget *parent) :
    QWidget(parent),
    ui(new Ui::Widget)
{
    ui->setupUi(this);
    connect(ui->pb_open,SIGNAL(clicked(bool)),this,SLOT(open_qrimage()));
}

Widget::~Widget()
{
    delete ui;
}

void Widget::open_qrimage()
{
    QString fileName = QFileDialog::getOpenFileName(this,
          tr("Open Image"), "/home/jana", tr("Image Files (*.png *.jpg *.bmp)"));
    if(fileName.isEmpty())
        return;
    Mat qrimage = imread(fileName.toStdString().c_str());
    QRCodeDetector detector ;
    String str = detector.detectAndDecode(qrimage);
    QString qrstring(str.c_str());
    QPixmap pixmap;
    pixmap.load(fileName);
    ui->lb_qrimage->setPixmap(pixmap);
    ui->te_qrstring->clear();
    ui->te_qrstring->setText(qrstring);
}
