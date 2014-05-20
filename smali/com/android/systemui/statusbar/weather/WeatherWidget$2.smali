.class Lcom/android/systemui/statusbar/weather/WeatherWidget$2;
.super Ljava/lang/Object;
.source "WeatherWidget.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/weather/WeatherWidget;->initLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/weather/WeatherWidget;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/weather/WeatherWidget;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/weather/WeatherWidget$2;->this$0:Lcom/android/systemui/statusbar/weather/WeatherWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    const/4 v7, 0x0

    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/weather/WeatherWidget$2;->this$0:Lcom/android/systemui/statusbar/weather/WeatherWidget;

    #getter for: Lcom/android/systemui/statusbar/weather/WeatherWidget;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/systemui/statusbar/weather/WeatherWidget;->access$1(Lcom/android/systemui/statusbar/weather/WeatherWidget;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "tweaks_custom_weather_app"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/weather/WeatherWidget$2;->this$0:Lcom/android/systemui/statusbar/weather/WeatherWidget;

    #getter for: Lcom/android/systemui/statusbar/weather/WeatherWidget;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/systemui/statusbar/weather/WeatherWidget;->access$1(Lcom/android/systemui/statusbar/weather/WeatherWidget;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "tweaks_custom_weather_activity"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/android/systemui/statusbar/weather/WeatherWidget$2;->this$0:Lcom/android/systemui/statusbar/weather/WeatherWidget;

    #getter for: Lcom/android/systemui/statusbar/weather/WeatherWidget;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/systemui/statusbar/weather/WeatherWidget;->access$1(Lcom/android/systemui/statusbar/weather/WeatherWidget;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "tweaks_custom_weather_package"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :try_start_0
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v4, 0x1000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/weather/WeatherWidget$2;->this$0:Lcom/android/systemui/statusbar/weather/WeatherWidget;

    iget-object v5, p0, Lcom/android/systemui/statusbar/weather/WeatherWidget$2;->this$0:Lcom/android/systemui/statusbar/weather/WeatherWidget;

    #getter for: Lcom/android/systemui/statusbar/weather/WeatherWidget;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/systemui/statusbar/weather/WeatherWidget;->access$1(Lcom/android/systemui/statusbar/weather/WeatherWidget;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Lcom/android/systemui/statusbar/weather/WeatherWidget;->startActivitySafely(Landroid/content/Context;Landroid/content/Intent;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/weather/WeatherWidget$2;->this$0:Lcom/android/systemui/statusbar/weather/WeatherWidget;

    #calls: Lcom/android/systemui/statusbar/weather/WeatherWidget;->collapseStatusBar()V
    invoke-static {v4}, Lcom/android/systemui/statusbar/weather/WeatherWidget;->access$2(Lcom/android/systemui/statusbar/weather/WeatherWidget;)V

    return-void

    :catch_0
    move-exception v0

    iget-object v4, p0, Lcom/android/systemui/statusbar/weather/WeatherWidget$2;->this$0:Lcom/android/systemui/statusbar/weather/WeatherWidget;

    #getter for: Lcom/android/systemui/statusbar/weather/WeatherWidget;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/systemui/statusbar/weather/WeatherWidget;->access$1(Lcom/android/systemui/statusbar/weather/WeatherWidget;)Landroid/content/Context;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Unable to start "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.htc.Weather"

    const-string v6, "com.htc.Weather.WeatherActivity"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v4, 0x1000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v4, p0, Lcom/android/systemui/statusbar/weather/WeatherWidget$2;->this$0:Lcom/android/systemui/statusbar/weather/WeatherWidget;

    #getter for: Lcom/android/systemui/statusbar/weather/WeatherWidget;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/systemui/statusbar/weather/WeatherWidget;->access$1(Lcom/android/systemui/statusbar/weather/WeatherWidget;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "Unable to start com.htc.Weather"

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
