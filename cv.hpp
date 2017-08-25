#ifndef CV_HPP
#define CV_HPP

#include <QObject>
#include <QQuickItem>
#include <QStringList>
#include "opencv2/opencv.hpp"

class CV : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString filename READ filename WRITE setFilename NOTIFY filenameChanged)
    Q_PROPERTY(QString shortname READ shortname NOTIFY shortnameChanged)
    Q_PROPERTY(int markers READ markers WRITE setMarkers NOTIFY markersChanged)
    Q_PROPERTY(QString strMarkers READ strMarkers NOTIFY strMarkersChanged)

public:
    explicit CV(QObject *parent = 0);
    QString filename();
    QString shortname();
    QString strMarkers();
    int markers();
    void setFilename(const QString &filename);
    void setMarkers( const int &markers );

signals:
    void filenameChanged();
    void shortnameChanged();
    void markersChanged();
    void strMarkersChanged();

private:
    QString m_filename;
    QString m_shortname;
    int m_markers;

public slots:
};

#endif // CV_HPP
