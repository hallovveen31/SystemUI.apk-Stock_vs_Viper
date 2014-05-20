.class Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsBroadcast$2;
.super Ljava/lang/Object;
.source "PowerWidget.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsBroadcast;->unregister()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsBroadcast;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsBroadcast;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsBroadcast$2;->this$1:Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsBroadcast;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsBroadcast$2;->this$1:Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsBroadcast;

    #getter for: Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsBroadcast;->this$0:Lcom/android/systemui/statusbar/powerwidget/PowerWidget;
    invoke-static {v1}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsBroadcast;->access$1(Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsBroadcast;)Lcom/android/systemui/statusbar/powerwidget/PowerWidget;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsBroadcast$2;->this$1:Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsBroadcast;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Venom - PowerWidget"

    const-string v2, "Receivers not yet registred"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
