.class public Lcom/android/systemui/statusbar/quicksetting/QuickSettingRotate;
.super Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
.source "QuickSettingRotate.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;


# instance fields
.field private callbackIndex:I

.field private indicator:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

.field private qsModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRotate;->callbackIndex:I

    iput-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRotate;->indicator:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    iput-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRotate;->qsModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    const-string v0, "rotation"

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->tileLabel:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/quicksetting/QuickSettingRotate;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->Log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/quicksetting/QuickSettingRotate;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/quicksetting/QuickSettingRotate;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getQSIconID()I
    .locals 1

    const v0, 0x7f020109

    return v0
.end method

.method public static getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const-string v0, "null"

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f0a00a3

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private initRotateEnvironment()V
    .locals 5

    const/4 v3, 0x0

    const/4 v4, 0x1

    const v2, 0x7f070027

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v1

    if-ne v1, v4, :cond_2

    move v2, v3

    :goto_1
    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->setOverlayEnable(Z)V

    const v2, 0x7f070028

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    iput-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRotate;->indicator:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRotate;->indicator:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRotate;->indicator:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    if-ne v1, v4, :cond_3

    :goto_2
    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->setLevel(II)V

    :cond_1
    const-string v2, "QuickSettingRotate"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initRotateEnvironment:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_1

    :cond_3
    move v3, v4

    goto :goto_2
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 3

    const/4 v1, 0x1

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->onAttachedToWindow()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRotate;->initRotateEnvironment()V

    new-instance v0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRotate$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRotate$1;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingRotate;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRotate;->onLocaleChanged()V

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    const v2, 0x7f07002a

    if-eq v0, v2, :cond_2

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRotate;->callbackIndex:I

    sget-boolean v0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRotate;->DEBUG:Z

    if-ne v0, v1, :cond_0

    const-string v0, "QuickSettingRotate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initializeCallbackIndex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRotate;->callbackIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRotate;->qsModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRotate;->qsModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    iget v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRotate;->callbackIndex:I

    invoke-virtual {v0, p0, p0, v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->addRotationLockTile(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;I)V

    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->onDetachedFromWindow()V

    invoke-virtual {p0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setOnOverlayChangeListener(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRotate;->qsModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRotate;->qsModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    iget v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRotate;->callbackIndex:I

    invoke-virtual {v0, v2, v2, v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->addRotationLockTile(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;I)V

    :cond_0
    return-void
.end method

.method public onLocaleChanged()V
    .locals 3

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070029

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRotate;->getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/util/res/HtcResUtil;->isInAllCapsLocale(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAllCaps(Z)V

    :cond_0
    return-void
.end method

.method public refreshView(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;)V
    .locals 5

    const/4 v2, 0x0

    const/4 v3, 0x1

    const v1, 0x7f070027

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    if-eqz v0, :cond_0

    iget-boolean v1, p2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->enabled:Z

    if-ne v1, v3, :cond_2

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->setOverlayEnable(Z)V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRotate;->indicator:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRotate;->indicator:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    iget-boolean v4, p2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->enabled:Z

    if-ne v4, v3, :cond_3

    :goto_1
    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->setLevel(II)V

    :cond_1
    const-string v1, "QuickSettingRotate"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRotationChanged:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->enabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    move v1, v3

    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_1
.end method

.method public setQuickSettingModel(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRotate;->qsModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRotate;->qsModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRotate;->qsModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    iget v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRotate;->callbackIndex:I

    invoke-virtual {v0, p0, p0, v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->addRotationLockTile(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;I)V

    :cond_0
    return-void
.end method
