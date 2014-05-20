.class Lcom/android/systemui/ImageWallpaper$DrawableEngine$WallpaperObserver;
.super Landroid/content/BroadcastReceiver;
.source "ImageWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/ImageWallpaper$DrawableEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WallpaperObserver"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/ImageWallpaper$DrawableEngine;


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 189
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_0

    .line 190
    const-string v0, "ImageWallpaper"

    const-string v1, "onReceive"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$WallpaperObserver;->this$1:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$WallpaperObserver;->this$1:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    const/4 v2, -0x1

    iput v2, v1, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastSurfaceHeight:I

    iput v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastSurfaceWidth:I

    .line 194
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$WallpaperObserver;->this$1:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    .line 195
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$WallpaperObserver;->this$1:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mRedrawNeeded:Z

    .line 196
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_1

    .line 197
    const-string v0, "ImageWallpaper"

    const-string v1, "onReceive mLastSurface width=height=-1"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    const-string v0, "ImageWallpaper"

    const-string v1, "onReceive drawFrameLocked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$WallpaperObserver;->this$1:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    invoke-virtual {v0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->drawFrame()V

    .line 201
    return-void
.end method
