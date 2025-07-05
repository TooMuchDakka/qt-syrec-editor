#pragma once

#include <QWidget>

class CodeEditorWidget : public QWidget {
public:
	explicit CodeEditorWidget(QWidget* parent = nullptr);
	~CodeEditorWidget();
};