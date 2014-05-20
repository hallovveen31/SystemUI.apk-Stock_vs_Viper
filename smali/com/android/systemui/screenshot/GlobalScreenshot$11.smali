.class Lcom/android/systemui/screenshot/GlobalScreenshot$11;
.super Ljava/lang/Object;
.source "GlobalScreenshot.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/screenshot/GlobalScreenshot;->startAnimation(Ljava/lang/Runnable;IIZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;


# direct methods
.method constructor <init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$11;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$11;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    #getter for: Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$8(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "tweaks_screenshot_quiet"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$11;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    #getter for: Lcom/android/systemui/screenshot/GlobalScreenshot;->mCameraSound:Landroid/media/MediaActionSound;
    invoke-static {v1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$9(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/media/MediaActionSound;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/media/MediaActionSound;->play(I)V

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$11;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    #getter for: Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$2(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->buildLayer()V

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$11;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    #getter for: Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$10(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/animation/AnimatorSet;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v1, "GlobalScreenshot"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "!!!!!fail to start screenshot animation:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
