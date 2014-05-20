.class Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot$5;
.super Ljava/lang/Object;
.source "QuickSettingScreenshot.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot$5;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot$5;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->screenshotLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->access$600(Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot$5;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->screenshotConnection:Landroid/content/ServiceConnection;
    invoke-static {v0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->access$700(Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;)Landroid/content/ServiceConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "QuickSettingScreenshot"

    const-string v2, "unbindService:timeout"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot$5;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->access$1300(Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot$5;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->screenshotConnection:Landroid/content/ServiceConnection;
    invoke-static {v2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->access$700(Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;)Landroid/content/ServiceConnection;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot$5;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->imageview:Landroid/view/View;
    invoke-static {v0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->access$1100(Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;)Landroid/view/View;

    move-result-object v0

    const/high16 v2, 0x3f80

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot$5;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot$5;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;

    const/4 v2, 0x0

    #setter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->screenshotConnection:Landroid/content/ServiceConnection;
    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->access$702(Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
