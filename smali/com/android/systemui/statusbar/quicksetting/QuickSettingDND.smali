.class public Lcom/android/systemui/statusbar/quicksetting/QuickSettingDND;
.super Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
.source "QuickSettingDND.java"


# instance fields
.field private dndEnable:Z

.field private dndObserver:Landroid/database/ContentObserver;

.field private handler:Landroid/os/Handler;

.field private imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

.field private indicatorview:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

.field private observerRegister:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingDND;->handler:Landroid/os/Handler;

    iput-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingDND;->indicatorview:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    iput-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingDND;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    new-instance v0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingDND$3;

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingDND;->handler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingDND$3;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingDND;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingDND;->dndObserver:Landroid/database/ContentObserver;

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingDND;->dndEnable:Z

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingDND;->observerRegister:Z

    const-string v0, "do_not_disturb"

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->tileLabel:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/quicksetting/QuickSettingDND;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingDND;->toggleDNDNextState()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/quicksetting/QuickSettingDND;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->Log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/quicksetting/QuickSettingDND;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/quicksetting/QuickSettingDND;)Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingDND;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/quicksetting/QuickSettingDND;)Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingDND;->indicatorview:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/quicksetting/QuickSettingDND;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingDND;->dndEnable:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/systemui/statusbar/quicksetting/QuickSettingDND;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingDND;->dndEnable:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/quicksetting/QuickSettingDND;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/quicksetting/QuickSettingDND;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getQSIconID()I
    .locals 1

    const v0, 0x7f020123

    return v0
.end method

.method public static getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const-string v0, "null"

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f0a00cd

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private setContentView(Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;)Z
    .locals 8

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    iput-object p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingDND;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    iput-object p2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingDND;->indicatorview:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    iget-object v5, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingDND;->dndObserver:Landroid/database/ContentObserver;

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    iget-object v5, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingDND;->observerRegister:Z

    if-ne v5, v4, :cond_2

    iget-object v5, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingDND;->dndObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v5}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingDND;->observerRegister:Z

    :cond_2
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingDND;->observerRegister:Z

    if-nez v5, :cond_3

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingDND;->observerRegister:Z

    const-string v5, "htc_dnd_feature_enabled"

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingDND;->dndObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v5, v3, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_3
    const-string v3, "QuickSettingDND"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setContentView:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v1

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    goto :goto_0
.end method

.method private toggleDNDNextState()V
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingDND$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingDND$4;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingDND;)V

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

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingDND;->setContentView(Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;)Z

    move-result v1

    if-ne v1, v4, :cond_2

    new-instance v2, Lcom/android/systemui/statusbar/quicksetting/QuickSettingDND$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingDND$1;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingDND;)V

    invoke-virtual {p0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v4}, Landroid/view/View;->setLongClickable(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->getOnLongClickListener()Landroid/view/View$OnLongClickListener;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v2, Lcom/android/systemui/statusbar/quicksetting/QuickSettingDND$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingDND$2;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingDND;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingDND;->onLocaleChanged()V

    if-eqz v0, :cond_1

    const v2, 0x7f07002d

    invoke-virtual {p0, v2, v5}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setTouchDelegate(II)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingDND;->handler:Landroid/os/Handler;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->removeSelfIfNeed(Landroid/os/Handler;)V

    const-string v2, "QuickSettingDND"

    const-string v3, "!!!!!initialize set content fail"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 4

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->onDetachedFromWindow()V

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setOnOverlayChangeListener(I)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v3}, Landroid/view/View;->setLongClickable(Z)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingDND;->observerRegister:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingDND;->dndObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingDND;->observerRegister:Z

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

    invoke-static {v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingDND;->getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;

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
