.class Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsObserver$1;
.super Ljava/lang/Object;
.source "PowerWidget.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsObserver;->observe()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsObserver;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsObserver$1;->this$1:Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v2, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsObserver$1;->this$1:Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsObserver;

    #getter for: Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsObserver;->this$0:Lcom/android/systemui/statusbar/powerwidget/PowerWidget;
    invoke-static {v2}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsObserver;->access$0(Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsObserver;)Lcom/android/systemui/statusbar/powerwidget/PowerWidget;

    move-result-object v2

    iget-object v2, v2, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsObserver$1;->this$1:Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsObserver;

    #getter for: Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsObserver;->this$0:Lcom/android/systemui/statusbar/powerwidget/PowerWidget;
    invoke-static {v2}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsObserver;->access$0(Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsObserver;)Lcom/android/systemui/statusbar/powerwidget/PowerWidget;

    move-result-object v2

    #calls: Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->getAllObservedUris()Ljava/util/List;
    invoke-static {v2}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->access$2(Lcom/android/systemui/statusbar/powerwidget/PowerWidget;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsObserver$1;->this$1:Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsObserver;

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0
.end method
