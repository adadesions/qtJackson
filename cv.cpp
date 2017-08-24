#include "cv.hpp"

CV::CV(QObject *parent) : QObject(parent)
{
    m_filename = "Ada.jpg";
    m_shortname = " - ";

}

QString CV::filename(){
    return m_filename;
}

QString CV::shortname(){
    return m_shortname;
}

void CV::setFilename( const QString &filename ){
    if( m_filename == filename )
        return;

    QStringList strList;
    m_filename = filename;
    strList = m_filename.split('/');
    m_shortname = strList.at(strList.size() - 1);
    emit shortnameChanged();
    emit filenameChanged();
}
