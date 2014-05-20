.class public Lcom/android/systemui/recent/Recents;
.super Lcom/android/systemui/SystemUI;
.source "Recents.java"

# interfaces
.implements Lcom/android/systemui/RecentsComponent;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    return-void
.end method

.method private screenshotLastActivity()V
    .locals 9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v5, 0x1

    const/16 v6, 0x20

    invoke-virtual {v0, v5, v6}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    const/4 v5, 0x0

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RecentTaskInfo;

    iget v5, v1, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    invoke-virtual {v0, v5}, Landroid/app/ActivityManager;->getTaskTopThumbnail(I)Landroid/graphics/Bitmap;

    :cond_1
    const-string v5, "Recents"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "recents : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v3

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public cancelPreloadingRecentTasksList()V
    .locals 4

    sget-boolean v1, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_RECENT_APP:Z

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.systemui.recent.CANCEL_PRELOAD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.systemui"

    const-string v2, "com.android.systemui.recent.RecentsPreloadReceiver"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    const/4 v3, -0x2

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/recent/RecentTasksLoader;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recent/RecentTasksLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recent/RecentTasksLoader;->cancelPreloadingFirstTask()V

    goto :goto_0
.end method

.method public closeRecents()V
    .locals 4

    sget-boolean v1, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_RECENT_APP:Z

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.systemui.recent.action.CLOSE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.systemui"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    const/4 v3, -0x2

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0
.end method

.method public preloadRecentTasksList()V
    .locals 4

    sget-boolean v1, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_RECENT_APP:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/recent/Recents;->screenshotLastActivity()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.systemui.recent.action.PRELOAD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.systemui"

    const-string v2, "com.android.systemui.recent.RecentsPreloadReceiver"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    const/4 v3, -0x2

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/recent/RecentTasksLoader;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recent/RecentTasksLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recent/RecentTasksLoader;->preloadFirstTask()V

    goto :goto_0
.end method

.method public start()V
    .locals 1

    const-class v0, Lcom/android/systemui/RecentsComponent;

    invoke-virtual {p0, v0, p0}, Lcom/android/systemui/SystemUI;->putComponent(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public toggleRecents(Landroid/view/Display;ILandroid/view/View;)V
    .locals 14

    sget-boolean v1, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_RECENT_APP:Z

    if-eqz v1, :cond_0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/systemui/recent/RecentAppFxActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v2, 0x10c0

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/UserHandle;

    const/4 v4, -0x2

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const-string v1, "AutoTest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SystemUI][RecentApp_Prelaunch_Finish]["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "][ms][FINISH]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/recent/RecentTasksLoader;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recent/RecentTasksLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recent/RecentTasksLoader;->getFirstTask()Lcom/android/systemui/recent/TaskDescription;

    move-result-object v1

    new-instance v4, Landroid/content/Intent;

    const-string v2, "com.android.systemui.recent.action.TOGGLE_RECENTS"

    invoke-direct {v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.recent.RecentsActivity"

    invoke-virtual {v4, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x1080

    invoke-virtual {v4, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/recent/RecentsActivity;->forceOpaqueBackground(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v2, 0x7f05000d

    const v3, 0x7f05000e

    invoke-static {v1, v2, v3}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    new-instance v3, Landroid/os/UserHandle;

    const/4 v5, -0x2

    invoke-direct {v3, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v4, v1, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Recents"

    const-string v3, "Failed to launch RecentAppsIntent"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    const/4 v3, -0x2

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v4, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/android/systemui/recent/TaskDescription;->getThumbnail()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    instance-of v2, v2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lcom/android/systemui/recent/TaskDescription;->getThumbnail()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_1
    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v2, 0x7f0c0003

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    const v3, 0x7f0c0004

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v6, v3

    if-nez v1, :cond_4

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Recents thumbnail is null"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    const/4 v1, 0x1

    const/4 v2, 0x1

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/recent/RecentTasksLoader;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recent/RecentTasksLoader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/recent/RecentTasksLoader;->getDefaultThumbnail()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v3, v3, v2

    if-nez v3, :cond_5

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v3, v3, v6

    if-eqz v3, :cond_6

    :cond_5
    float-to-int v3, v2

    float-to-int v7, v6

    const/4 v8, 0x1

    invoke-static {v1, v3, v7, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_6

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Recents thumbnail is null"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    move-object v3, v1

    new-instance v7, Landroid/util/DisplayMetrics;

    invoke-direct {v7}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p1, v7}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v8, 0x1

    if-ne v1, v8, :cond_8

    const v1, 0x7f0c000e

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    const v6, 0x7f0c000d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    int-to-float v6, v6

    const v8, 0x7f0c000b

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    int-to-float v8, v8

    const v9, 0x7f0c0005

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    int-to-float v9, v9

    add-float v10, v1, v6

    add-float/2addr v10, v8

    add-float/2addr v2, v10

    const/high16 v10, 0x4000

    mul-float/2addr v10, v9

    add-float/2addr v2, v10

    iget v10, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v10, v10

    sub-float v2, v10, v2

    const/high16 v10, 0x4000

    div-float/2addr v2, v10

    add-float/2addr v1, v2

    add-float/2addr v1, v6

    add-float/2addr v1, v9

    add-float/2addr v1, v8

    float-to-int v1, v1

    iget v2, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    const v6, 0x7f0c0004

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    sub-int/2addr v2, v6

    int-to-float v2, v2

    sub-float/2addr v2, v9

    float-to-int v2, v2

    const/4 v6, 0x1

    move/from16 v0, p2

    if-ne v0, v6, :cond_7

    iget v6, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int v1, v6, v1

    const v6, 0x7f0c0003

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    sub-int/2addr v1, v5

    :cond_7
    move v13, v2

    move v2, v1

    move v1, v13

    :goto_2
    new-instance v5, Lcom/android/systemui/recent/Recents$1;

    invoke-direct {v5, p0}, Lcom/android/systemui/recent/Recents$1;-><init>(Lcom/android/systemui/recent/Recents;)V

    move-object/from16 v0, p3

    invoke-static {v0, v3, v2, v1, v5}, Landroid/app/ActivityOptions;->makeThumbnailScaleDownAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IILandroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v1

    const-string v2, "com.android.systemui.recent.WAITING_FOR_WINDOW_ANIMATION"

    const/4 v3, 0x1

    invoke-virtual {v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    new-instance v3, Landroid/os/UserHandle;

    const/4 v5, -0x2

    invoke-direct {v3, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v4, v1, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    :cond_8
    const v1, 0x7f0c0074

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x7f0c0005

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v8, v2

    const v2, 0x7f0c000c

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    const v9, 0x7f0c0006

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    int-to-float v9, v9

    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v10, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {v10}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    invoke-virtual {v10}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v11

    iget v11, v11, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v9, v11

    int-to-float v9, v9

    const v11, 0x7f0c0007

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {v10}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v11

    iget v11, v11, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    invoke-virtual {v10}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v10

    iget v10, v10, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int v10, v11, v10

    int-to-float v10, v10

    const v11, 0x105000c

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v6, v1

    const/high16 v12, 0x4000

    mul-float/2addr v12, v8

    add-float/2addr v6, v12

    add-float/2addr v6, v2

    add-float/2addr v6, v9

    add-float/2addr v6, v11

    add-float/2addr v2, v6

    add-float v6, v2, v10

    const v2, 0x7f0c000f

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    const v9, 0x7f0c000a

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    int-to-float v9, v9

    iget v10, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    const v12, 0x7f0c0003

    invoke-virtual {v5, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    sub-int v5, v10, v5

    int-to-float v5, v5

    sub-float/2addr v5, v8

    sub-float v2, v5, v2

    sub-float/2addr v2, v9

    float-to-int v2, v2

    iget v5, v7, Landroid/util/DisplayMetrics;->heightPixels:I
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    int-to-float v5, v5

    sub-float/2addr v5, v11

    sub-float/2addr v5, v6

    const/high16 v6, 0x4000

    div-float/2addr v5, v6

    add-float/2addr v1, v5

    add-float/2addr v1, v11

    add-float/2addr v1, v8

    add-float/2addr v1, v11

    float-to-int v1, v1

    goto/16 :goto_2
.end method
