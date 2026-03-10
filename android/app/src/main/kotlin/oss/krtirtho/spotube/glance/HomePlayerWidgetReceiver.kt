package oss.krtirtho.spotube.glance

import es.antonborri.home_widget.HomeWidgetGlanceWidgetReceiver

class HomePlayerWidgetReceiver : HomeWidgetGlanceWidgetReceiver<HomePlayerWidget>() {
    override val glanceAppWidget = HomePlayerWidget()
}
