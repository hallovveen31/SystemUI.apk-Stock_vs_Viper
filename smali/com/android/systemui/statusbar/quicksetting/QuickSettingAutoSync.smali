.class public Lcom/android/systemui/statusbar/quicksetting/QuickSettingAutoSync;
.super Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
.source "QuickSettingAutoSync.java"


# instance fields
.field private imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

.field private indicatorview:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

.field private receiver:Landroid/content/BroadcastReceiver;

.field private receiverRegister:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAutoSync;->indicatorview:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAutoSync;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    new-instance v0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAutoSync$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAutoSync$3;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingAutoSync;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAutoSync;->receiver:Landroid/content/BroadcastReceiver;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAutoSync;->receiverRegister:Z

    const-string v0, "auto_sync"

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->tileLabel:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/quicksetting/QuickSettingAutoSync;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAutoSync;->toggleNextState()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/quicksetting/QuickSettingAutoSync;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->Log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/quicksetting/QuickSettingAutoSync;)Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAutoSync;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/quicksetting/QuickSettingAutoSync;)Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAutoSync;->indicatorview:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/quicksetting/QuickSettingAutoSync;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAutoSync;->performToggleNextState()V

    return-void
.end method

.method public static getQSIconID()I
    .locals 1

    const v0, 0x7f02010b

    return v0
.end method

.method public static getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const-string v0, "null"

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f0a00c0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private performToggleNextState()V
    .locals 10

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v0

    if-nez v0, :cond_0

    move v5, v6

    :goto_0
    invoke-static {v5}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v1, v8, v3

    const-string v5, "QuickSettingAutoSync"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "toggleNextState:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " currentState:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " nextState:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-nez v0, :cond_1

    :goto_1
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    move v5, v7

    goto :goto_0

    :cond_1
    move v6, v7

    goto :goto_1
.end method

.method private setContentView(Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;)Z
    .locals 8

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move v5, v4

    :goto_0
    return v5

    :cond_1
    iput-object p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAutoSync;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    iput-object p2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAutoSync;->indicatorview:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v0

    iget-object v6, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAutoSync;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    if-nez v0, :cond_3

    move v3, v4

    :goto_1
    invoke-virtual {v6, v3}, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->setOverlayEnable(Z)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAutoSync;->indicatorview:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    if-nez v0, :cond_4

    :goto_2
    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->setLevel(II)V

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAutoSync;->receiverRegister:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAutoSync;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "com.android.sync.SYNC_CONN_STATUS_CHANGED"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAutoSync;->receiverRegister:Z

    :cond_2
    const-string v3, "QuickSettingAutoSync"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setContentView:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v1

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " autoSyncEnable:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    move v3, v5

    goto :goto_1

    :cond_4
    move v4, v5

    goto :goto_2
.end method

.method private toggleNextState()V
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAutoSync$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAutoSync$4;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingAutoSync;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 6

    const v5, 0x7f07002e

    const/4 v4, 0x1

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->onAttachedToWindow()V

    const v2, 0x7f070027

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    const v3, 0x7f070028

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAutoSync;->setContentView(Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;)Z

    move-result v1

    if-ne v1, v4, :cond_2

    new-instance v2, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAutoSync$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAutoSync$1;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingAutoSync;)V

    invoke-virtual {p0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v4}, Landroid/view/View;->setLongClickable(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->getOnLongClickListener()Landroid/view/View$OnLongClickListener;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v2, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAutoSync$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAutoSync$2;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingAutoSync;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAutoSync;->onLocaleChanged()V

    if-eqz v0, :cond_1

    const v2, 0x7f07002d

    invoke-virtual {p0, v2, v5}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setTouchDelegate(II)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->removeSelfIfNeed(Landroid/os/Handler;)V

    const-string v2, "QuickSettingAutoSync"

    const-string v3, "!!!!!initialize set content fail"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 3

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->onDetachedFromWindow()V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setOnOverlayChangeListener(I)V

    invoke-virtual {p0, v2}, Landroid/view/View;->setLongClickable(Z)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAutoSync;->receiverRegister:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAutoSync;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAutoSync;->receiverRegister:Z

    :cond_0
    return-void
.end method

.method public onLocaleChanged()V
    .locals 4

    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f070029

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAutoSync;->getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/htc/util/res/HtcResUtil;->isInAllCapsLocale(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setAllCaps(Z)V

    :cond_0
    const v3, 0x7f07002e

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    const v3, 0x7f0a00de

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method
