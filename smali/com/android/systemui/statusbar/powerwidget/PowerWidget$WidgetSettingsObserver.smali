.class Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsObserver;
.super Landroid/database/ContentObserver;
.source "PowerWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/powerwidget/PowerWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WidgetSettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/powerwidget/PowerWidget;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/powerwidget/PowerWidget;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsObserver;->this$0:Lcom/android/systemui/statusbar/powerwidget/PowerWidget;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic access$0(Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsObserver;)Lcom/android/systemui/statusbar/powerwidget/PowerWidget;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsObserver;->this$0:Lcom/android/systemui/statusbar/powerwidget/PowerWidget;

    return-object v0
.end method


# virtual methods
.method public observe()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsObserver$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsObserver$1;-><init>(Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsObserver;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public onChange(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsObserver;->onChange(ZLandroid/net/Uri;)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Override"
        }
    .end annotation

    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsObserver;->this$0:Lcom/android/systemui/statusbar/powerwidget/PowerWidget;

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

    if-eqz p2, :cond_2

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/powerwidget/Toggle;->getObservedUris()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/powerwidget/Toggle;->onDirtySettingChanged()V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/powerwidget/Toggle;->getObservedUris()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/powerwidget/Toggle;->onDirtySettingChanged()V

    goto :goto_0
.end method

.method public unobserve()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsObserver$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsObserver$2;-><init>(Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsObserver;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
