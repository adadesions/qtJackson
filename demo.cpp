#include "demo.hpp"
#include <iostream>

Demo::Demo(QObject *parent) : QObject(parent)
{
}

QString Demo::userName(){
    return m_userName;
}

void Demo::setUserName(const QString &userName){
    if (userName == m_userName)
        return;

    m_userName = userName;
    emit userNameChanged();
}

QString Demo::showImage( const QString filename ) {
    std::string fn = filename.toStdString();
    fn = fn.substr(7, fn.length() );
    std::cout << fn << std::endl;
    cv::Mat img = cv::imread( fn ,1 );
    std::cout << img;
    return QString::number(img.at<uchar>(0,0));
}
