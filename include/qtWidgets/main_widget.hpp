#pragma once

#include <QWidget>

namespace widgets
{
	class MainWidget : public QWidget {
		Q_OBJECT
	public:
		explicit MainWidget(QWidget* parent = nullptr);
	};
} // namespace widgets
