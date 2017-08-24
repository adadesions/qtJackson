#ifndef CV_HPP
#define CV_HPP

#include <QObject>
#include <QQuickItem>
#include <QStringList>
#include <QRegExp>
#include "opencv2/opencv.hpp"

class CV : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString filename READ filename WRITE setFilename NOTIFY filenameChanged)
    Q_PROPERTY(QString shortname READ shortname NOTIFY shortnameChanged)

public:
    explicit CV(QObject *parent = 0);
    QString filename();
    QString shortname();
    void setFilename(const QString &filename);

signals:
    void filenameChanged();
    void shortnameChanged();

private:
    QString m_filename;
    QString m_shortname;

public slots:
};

#endif // CV_HPP
