#include <QApplication>

#include "qtWidgets/main_widget.hpp"

int main(int argc, char* argv[])
{
	QApplication app(argc, argv);
	widgets::MainWidget mainWidget;
	mainWidget.show();

	return app.exec();
}
