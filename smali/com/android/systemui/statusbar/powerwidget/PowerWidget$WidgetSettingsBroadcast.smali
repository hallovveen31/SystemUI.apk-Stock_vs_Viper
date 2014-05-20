.class Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsBroadcast;
.super Landroid/content/BroadcastReceiver;
.source "PowerWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/powerwidget/PowerWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WidgetSettingsBroadcast"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/powerwidget/PowerWidget;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/powerwidget/PowerWidget;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsBroadcast;->this$0:Lcom/android/systemui/statusbar/powerwidget/PowerWidget;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/powerwidget/PowerWidget;Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsBroadcast;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsBroadcast;-><init>(Lcom/android/systemui/statusbar/powerwidget/PowerWidget;)V

    return-void
.end method

.method static synthetic access$1(Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsBroadcast;)Lcom/android/systemui/statusbar/powerwidget/PowerWidget;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsBroadcast;->this$0:Lcom/android/systemui/statusbar/powerwidget/PowerWidget;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsBroadcast;->this$0:Lcom/android/systemui/statusbar/powerwidget/PowerWidget;

    #getter for: Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mButtons:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->access$1(Lcom/android/systemui/statusbar/powerwidget/PowerWidget;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/powerwidget/Toggle;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/powerwidget/Toggle;->getBroadcastIntentFilter()Landroid/content/IntentFilter;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/powerwidget/Toggle;->onDirtyReceived(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public register()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsBroadcast$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsBroadcast$1;-><init>(Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsBroadcast;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public unregister()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsBroadcast$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsBroadcast$2;-><init>(Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsBroadcast;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
