.class public Lcom/android/systemui/recent/RAMMeter;
.super Landroid/widget/RelativeLayout;
.source "RAMMeter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recent/RAMMeter$onTasksCleared;
    }
.end annotation


# instance fields
.field private am:Landroid/app/ActivityManager;

.field private mCallback:Lcom/android/systemui/recent/RAMMeter$onTasksCleared;

.field private mClearAllButton:Lcom/android/systemui/statusbar/widget/ScaleImageView;

.field private mHandler:Landroid/os/Handler;

.field private mProgress:Lcom/htc/widget/HtcProgressBar;

.field private mTaskManagerButton:Lcom/android/systemui/statusbar/widget/ScaleImageView;

.field private mTitle:Landroid/widget/TextView;

.field private memInfo:Landroid/app/ActivityManager$MemoryInfo;

.field private sizes:[Ljava/lang/String;

.field totalMemory:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/systemui/recent/RAMMeter$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/recent/RAMMeter$1;-><init>(Lcom/android/systemui/recent/RAMMeter;)V

    iput-object v0, p0, Lcom/android/systemui/recent/RAMMeter;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recent/RAMMeter;->memInfo:Landroid/app/ActivityManager$MemoryInfo;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/android/systemui/recent/RAMMeter$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/recent/RAMMeter$1;-><init>(Lcom/android/systemui/recent/RAMMeter;)V

    iput-object v0, p0, Lcom/android/systemui/recent/RAMMeter;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recent/RAMMeter;->memInfo:Landroid/app/ActivityManager$MemoryInfo;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/android/systemui/recent/RAMMeter$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/recent/RAMMeter$1;-><init>(Lcom/android/systemui/recent/RAMMeter;)V

    iput-object v0, p0, Lcom/android/systemui/recent/RAMMeter;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recent/RAMMeter;->memInfo:Landroid/app/ActivityManager$MemoryInfo;

    return-void
.end method

.method static synthetic access$0(Lcom/android/systemui/recent/RAMMeter;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recent/RAMMeter;->updateMemorySize()V

    return-void
.end method

.method static synthetic access$1(Lcom/android/systemui/recent/RAMMeter;)Lcom/android/systemui/recent/RAMMeter$onTasksCleared;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recent/RAMMeter;->mCallback:Lcom/android/systemui/recent/RAMMeter$onTasksCleared;

    return-object v0
.end method

.method static synthetic access$2(Lcom/android/systemui/recent/RAMMeter;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recent/RAMMeter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private initObserver()V
    .locals 4

    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "tweaks_hide_rammeter"

    aput-object v3, v0, v2

    new-instance v1, Lcom/android/systemui/recent/RAMMeter$5;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/recent/RAMMeter$5;-><init>(Lcom/android/systemui/recent/RAMMeter;Landroid/os/Handler;)V

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/systemui/recent/RAMMeter$6;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/systemui/recent/RAMMeter$6;-><init>(Lcom/android/systemui/recent/RAMMeter;[Ljava/lang/String;Landroid/database/ContentObserver;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    invoke-virtual {p0}, Lcom/android/systemui/recent/RAMMeter;->setVisibility()V

    return-void
.end method

.method private updateMemorySize()V
    .locals 7

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/systemui/recent/RAMMeter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/recent/RAMMeter;->am:Landroid/app/ActivityManager;

    iget-object v3, p0, Lcom/android/systemui/recent/RAMMeter;->memInfo:Landroid/app/ActivityManager$MemoryInfo;

    invoke-virtual {v2, v3}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    iget-object v2, p0, Lcom/android/systemui/recent/RAMMeter;->memInfo:Landroid/app/ActivityManager$MemoryInfo;

    iget-wide v2, v2, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    iget-object v4, p0, Lcom/android/systemui/recent/RAMMeter;->memInfo:Landroid/app/ActivityManager$MemoryInfo;

    iget-wide v4, v4, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    sub-long v0, v2, v4

    iget-object v2, p0, Lcom/android/systemui/recent/RAMMeter;->mTitle:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/recent/RAMMeter;->readableFileSize(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/recent/RAMMeter;->totalMemory:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/systemui/recent/RAMMeter;->mProgress:Lcom/htc/widget/HtcProgressBar;

    const-wide/16 v3, 0x400

    div-long v3, v0, v3

    const-wide/16 v5, 0x400

    div-long/2addr v3, v5

    long-to-int v3, v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcProgressBar;->setProgress(I)V

    iget-object v2, p0, Lcom/android/systemui/recent/RAMMeter;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public clearRecentApps()V
    .locals 5

    iget-object v1, p0, Lcom/android/systemui/recent/RAMMeter;->mCallback:Lcom/android/systemui/recent/RAMMeter$onTasksCleared;

    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/recent/RAMMeter;->mCallback:Lcom/android/systemui/recent/RAMMeter$onTasksCleared;

    invoke-interface {v1}, Lcom/android/systemui/recent/RAMMeter$onTasksCleared;->getTasksDescriptions()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recent/TaskDescription;

    iget-object v2, p0, Lcom/android/systemui/recent/RAMMeter;->am:Landroid/app/ActivityManager;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/recent/RAMMeter;->am:Landroid/app/ActivityManager;

    iget v3, v0, Lcom/android/systemui/recent/TaskDescription;->persistentTaskId:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/app/ActivityManager;->removeTask(II)Z

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    invoke-direct {p0}, Lcom/android/systemui/recent/RAMMeter;->updateMemorySize()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/systemui/recent/RAMMeter;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 5

    const-wide/16 v3, 0x400

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f07009b

    invoke-virtual {p0, v0}, Lcom/android/systemui/recent/RAMMeter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/recent/RAMMeter;->mTitle:Landroid/widget/TextView;

    const v0, 0x7f0700b5

    invoke-virtual {p0, v0}, Lcom/android/systemui/recent/RAMMeter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/widget/ScaleImageView;

    iput-object v0, p0, Lcom/android/systemui/recent/RAMMeter;->mTaskManagerButton:Lcom/android/systemui/statusbar/widget/ScaleImageView;

    const v0, 0x7f0700b3

    invoke-virtual {p0, v0}, Lcom/android/systemui/recent/RAMMeter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/widget/ScaleImageView;

    iput-object v0, p0, Lcom/android/systemui/recent/RAMMeter;->mClearAllButton:Lcom/android/systemui/statusbar/widget/ScaleImageView;

    const v0, 0x7f0700b4

    invoke-virtual {p0, v0}, Lcom/android/systemui/recent/RAMMeter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcProgressBar;

    iput-object v0, p0, Lcom/android/systemui/recent/RAMMeter;->mProgress:Lcom/htc/widget/HtcProgressBar;

    invoke-virtual {p0}, Lcom/android/systemui/recent/RAMMeter;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/systemui/recent/RAMMeter;->am:Landroid/app/ActivityManager;

    iget-object v0, p0, Lcom/android/systemui/recent/RAMMeter;->mTaskManagerButton:Lcom/android/systemui/statusbar/widget/ScaleImageView;

    new-instance v1, Lcom/android/systemui/recent/RAMMeter$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/recent/RAMMeter$2;-><init>(Lcom/android/systemui/recent/RAMMeter;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/widget/ScaleImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/recent/RAMMeter;->mClearAllButton:Lcom/android/systemui/statusbar/widget/ScaleImageView;

    new-instance v1, Lcom/android/systemui/recent/RAMMeter$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/recent/RAMMeter$3;-><init>(Lcom/android/systemui/recent/RAMMeter;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/widget/ScaleImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/recent/RAMMeter;->mClearAllButton:Lcom/android/systemui/statusbar/widget/ScaleImageView;

    new-instance v1, Lcom/android/systemui/recent/RAMMeter$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/recent/RAMMeter$4;-><init>(Lcom/android/systemui/recent/RAMMeter;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/widget/ScaleImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {p0}, Lcom/android/systemui/recent/RAMMeter;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recent/RAMMeter;->sizes:[Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/recent/RAMMeter;->am:Landroid/app/ActivityManager;

    iget-object v1, p0, Lcom/android/systemui/recent/RAMMeter;->memInfo:Landroid/app/ActivityManager$MemoryInfo;

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    iget-object v0, p0, Lcom/android/systemui/recent/RAMMeter;->memInfo:Landroid/app/ActivityManager$MemoryInfo;

    iget-wide v0, v0, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/recent/RAMMeter;->readableFileSize(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recent/RAMMeter;->totalMemory:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/recent/RAMMeter;->mProgress:Lcom/htc/widget/HtcProgressBar;

    iget-object v1, p0, Lcom/android/systemui/recent/RAMMeter;->memInfo:Landroid/app/ActivityManager$MemoryInfo;

    iget-wide v1, v1, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    div-long/2addr v1, v3

    div-long/2addr v1, v3

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcProgressBar;->setMax(I)V

    invoke-direct {p0}, Lcom/android/systemui/recent/RAMMeter;->initObserver()V

    return-void
.end method

.method public readableFileSize(J)Ljava/lang/String;
    .locals 9

    const-wide/high16 v7, 0x4090

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-gtz v1, :cond_0

    const-string v1, "0"

    :goto_0
    return-object v1

    :cond_0
    long-to-double v1, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->log10(D)D

    move-result-wide v1

    invoke-static {v7, v8}, Ljava/lang/Math;->log10(D)D

    move-result-wide v3

    div-double/2addr v1, v3

    double-to-int v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v2, Ljava/text/DecimalFormat;

    const-string v3, "#,##0.#"

    invoke-direct {v2, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    long-to-double v3, p1

    int-to-double v5, v0

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    div-double/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/recent/RAMMeter;->sizes:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public setOnTasksClearedListener(Lcom/android/systemui/recent/RAMMeter$onTasksCleared;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recent/RAMMeter;->mCallback:Lcom/android/systemui/recent/RAMMeter$onTasksCleared;

    return-void
.end method

.method public setRecentsState(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/recent/RAMMeter;->mClearAllButton:Lcom/android/systemui/statusbar/widget/ScaleImageView;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/widget/ScaleImageView;->setEnabled(Z)V

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/recent/RAMMeter;->mClearAllButton:Lcom/android/systemui/statusbar/widget/ScaleImageView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/widget/ScaleImageView;->setEnabled(Z)V

    goto :goto_1
.end method

.method protected setVisibility()V
    .locals 3

    const/4 v0, 0x0

    const-string v1, "Venom"

    const-string v2, "Hiding Ram Meter"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/recent/RAMMeter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "tweaks_hide_rammeter"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/16 v0, 0x8

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/recent/RAMMeter;->setVisibility(I)V

    return-void
.end method
