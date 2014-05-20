.class Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsBroadcast$1;
.super Ljava/lang/Object;
.source "PowerWidget.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsBroadcast;->register()V
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

    iput-object p1, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsBroadcast$1;->this$1:Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsBroadcast;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsBroadcast$1;->this$1:Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsBroadcast;

    #getter for: Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsBroadcast;->this$0:Lcom/android/systemui/statusbar/powerwidget/PowerWidget;
    invoke-static {v0}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsBroadcast;->access$1(Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsBroadcast;)Lcom/android/systemui/statusbar/powerwidget/PowerWidget;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsBroadcast$1;->this$1:Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsBroadcast;

    iget-object v2, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsBroadcast$1;->this$1:Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsBroadcast;

    #getter for: Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsBroadcast;->this$0:Lcom/android/systemui/statusbar/powerwidget/PowerWidget;
    invoke-static {v2}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsBroadcast;->access$1(Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsBroadcast;)Lcom/android/systemui/statusbar/powerwidget/PowerWidget;

    move-result-object v2

    #calls: Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->getMergedBroadcastIntentFilter()Landroid/content/IntentFilter;
    invoke-static {v2}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->access$0(Lcom/android/systemui/statusbar/powerwidget/PowerWidget;)Landroid/content/IntentFilter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method
