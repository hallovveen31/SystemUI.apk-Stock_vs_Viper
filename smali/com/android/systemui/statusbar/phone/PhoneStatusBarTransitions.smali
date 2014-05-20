.class public final Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;
.super Lcom/android/systemui/statusbar/phone/BarTransitions;
.source "PhoneStatusBarTransitions.java"


# static fields
.field private static final DEFAULT_APPS_ALPHA:I = 0xff

.field private static final DEFAULT_HOME_ALPHA:I = 0xff


# instance fields
.field private lastMode:I

.field private mBattery:Landroid/view/View;

.field private mClock:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mCurrentAnimation:Landroid/animation/Animator;

.field private final mIconAlphaWhenOpaque:F

.field private mLeftSide:Landroid/view/View;

.field private mOpaque:Z

.field private mOpaqueApp:Z

.field private final mSettings:[Ljava/lang/String;

.field private mSignalCluster:Landroid/view/View;

.field private mStatusBarColor:I

.field private mStatusBarColorApp:I

.field private mStatusBarStyle:I

.field private mStatusBarTransApp:I

.field private mStatusBarTransHome:I

.field private mStatusIcons:Landroid/view/View;

.field private final mView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

.field private opaqueDrawable:Landroid/graphics/drawable/Drawable;

.field private translucentDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)V
    .locals 5

    const/4 v3, 0x0

    const/4 v4, 0x1

    const v1, 0x7f0204ff

    invoke-direct {p0, p1, v1, v3}, Lcom/android/systemui/statusbar/phone/BarTransitions;-><init>(Landroid/view/View;IZ)V

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->lastMode:I

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "tweaks_opaque_statusbar"

    aput-object v2, v1, v3

    const-string v2, "tweaks_opaque_statusbar_app"

    aput-object v2, v1, v4

    const/4 v2, 0x2

    const-string v3, "tweaks_statusbar_bgcolor"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "tweaks_statusbar_bgcolor_app"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "tweaks_statusbar_transp_home"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "tweaks_statusbar_style"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "tweaks_statusbar_transp_app"

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mSettings:[Ljava/lang/String;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mContext:Landroid/content/Context;

    const v1, 0x7f0c001d

    invoke-virtual {v0, v1, v4, v4}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mIconAlphaWhenOpaque:F

    const v1, 0x7f020500

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->opaqueDrawable:Landroid/graphics/drawable/Drawable;

    const v1, 0x7f020501

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->translucentDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method static synthetic access$0(Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->updateSettings()V

    return-void
.end method

.method static synthetic access$1(Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2(Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mSettings:[Ljava/lang/String;

    return-object v0
.end method

.method private applyMode(IZ)V
    .locals 8

    const/4 v7, 0x3

    const-string v4, "Venom - Transition"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "ApplyMode: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mLeftSide:Landroid/view/View;

    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->getNonBatteryClockAlphaFor(I)F

    move-result v2

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->getBatteryClockAlpha(I)F

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mCurrentAnimation:Landroid/animation/Animator;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mCurrentAnimation:Landroid/animation/Animator;

    invoke-virtual {v4}, Landroid/animation/Animator;->cancel()V

    :cond_1
    if-eqz p2, :cond_3

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v4, 0x5

    new-array v0, v4, [Landroid/animation/Animator;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mLeftSide:Landroid/view/View;

    invoke-virtual {p0, v5, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->animateTransitionTo(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v0, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mStatusIcons:Landroid/view/View;

    invoke-virtual {p0, v5, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->animateTransitionTo(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v0, v4

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mSignalCluster:Landroid/view/View;

    invoke-virtual {p0, v5, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->animateTransitionTo(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v0, v4

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mBattery:Landroid/view/View;

    invoke-virtual {p0, v4, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->animateTransitionTo(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v0, v7

    const/4 v4, 0x4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mClock:Landroid/view/View;

    invoke-virtual {p0, v5, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->animateTransitionTo(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v0, v4

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    if-ne p1, v7, :cond_2

    const-wide/16 v4, 0xfa

    invoke-virtual {v1, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    :cond_2
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mCurrentAnimation:Landroid/animation/Animator;

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mLeftSide:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mStatusIcons:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mSignalCluster:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mBattery:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mClock:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method

.method private getBatteryClockAlpha(I)F
    .locals 1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const/high16 v0, 0x3f00

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->getNonBatteryClockAlphaFor(I)F

    move-result v0

    goto :goto_0
.end method

.method private getNonBatteryClockAlphaFor(I)F
    .locals 1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->isOpaque(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/high16 v0, 0x3f80

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mIconAlphaWhenOpaque:F

    goto :goto_0
.end method

.method private isOpaque(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateSettings()V
    .locals 5

    const/16 v4, 0xff

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "tweaks_statusbar_bgcolor"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mStatusBarColor:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "tweaks_statusbar_bgcolor_app"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mStatusBarColorApp:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "tweaks_opaque_statusbar"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mOpaque:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "tweaks_opaque_statusbar_app"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_2

    :goto_1
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mOpaqueApp:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "tweaks_statusbar_transp_home"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mStatusBarTransHome:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "tweaks_statusbar_transp_app"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mStatusBarTransApp:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "tweaks_statusbar_style"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mStatusBarStyle:I

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->lastMode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->lastMode:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->setupBackground(I)V

    :cond_0
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method


# virtual methods
.method public animateTransitionTo(Landroid/view/View;F)Landroid/animation/ObjectAnimator;
    .locals 4

    const-string v1, "Venom - Transition"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "animateTransitionTo: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    new-array v0, v1, [F

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    const-string v1, "alpha"

    invoke-static {p1, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    return-object v1
.end method

.method protected applyStatusBarTransparency(I)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mStatusBarTransHome:I

    :goto_0
    const-string v1, "Venom - Transition"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Transparency: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void

    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mStatusBarTransApp:I

    goto :goto_0
.end method

.method public init()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v2, 0x7f07005f

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mLeftSide:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v2, 0x7f070063

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mStatusIcons:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v2, 0x7f070066

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mSignalCluster:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v2, 0x7f070068

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mBattery:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v2, 0x7f070069

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mClock:Landroid/view/View;

    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions$1;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;Landroid/os/Handler;)V

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions$2;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions$2;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;Landroid/database/ContentObserver;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->updateSettings()V

    const/4 v1, -0x1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->getMode()I

    move-result v2

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->applyModeBackground(IIZ)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->getMode()I

    move-result v1

    invoke-direct {p0, v1, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->applyMode(IZ)V

    return-void
.end method

.method public setupBackground(I)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    const-string v2, "Venom - Transition"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "setupBackground: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eq p1, v5, :cond_0

    if-ne p1, v6, :cond_2

    :cond_0
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mOpaque:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v2, v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mStatusBarColor:I

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setBackgroundColor(I)V

    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->applyStatusBarTransparency(I)V

    return-void

    :cond_2
    if-eqz p1, :cond_3

    const/4 v2, 0x3

    if-ne p1, v2, :cond_4

    :cond_3
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mOpaqueApp:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v2, v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mStatusBarColorApp:I

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setBackgroundColor(I)V

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-eqz v2, :cond_6

    if-eq p1, v5, :cond_5

    if-ne p1, v6, :cond_9

    :cond_5
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mStatusBarStyle:I

    packed-switch v2, :pswitch_data_0

    if-ne p1, v5, :cond_8

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->opaqueDrawable:Landroid/graphics/drawable/Drawable;

    const/16 v3, 0x7f

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->opaqueDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_6
    :goto_1
    if-eq p1, v5, :cond_7

    if-ne p1, v6, :cond_a

    :cond_7
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mStatusBarColor:I

    :goto_2
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    new-instance v2, Landroid/graphics/LightingColorFilter;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v0}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    :pswitch_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v3, 0x7f0205fb

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setBackgroundResource(I)V

    goto :goto_1

    :pswitch_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->opaqueDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_8
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->translucentDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_9
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->opaqueDrawable:Landroid/graphics/drawable/Drawable;

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->opaqueDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_a
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mStatusBarColorApp:I

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public transitionTo(IZ)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->lastMode:I

    if-eq v0, p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->setupBackground(I)V

    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->lastMode:I

    return-void
.end method
