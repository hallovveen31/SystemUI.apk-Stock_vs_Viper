.class Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsObserver$2;
.super Ljava/lang/Object;
.source "PowerWidget.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsObserver;->unobserve()V
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

    iput-object p1, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsObserver$2;->this$1:Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsObserver$2;->this$1:Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsObserver;

    #getter for: Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsObserver;->this$0:Lcom/android/systemui/statusbar/powerwidget/PowerWidget;
    invoke-static {v0}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsObserver;->access$0(Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsObserver;)Lcom/android/systemui/statusbar/powerwidget/PowerWidget;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsObserver$2;->this$1:Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
