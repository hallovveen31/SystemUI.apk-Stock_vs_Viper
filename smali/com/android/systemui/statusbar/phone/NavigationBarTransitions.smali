.class public final Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;
.super Lcom/android/systemui/statusbar/phone/BarTransitions;
.source "NavigationBarTransitions.java"


# instance fields
.field private final mBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field private mLightsOut:Z

.field private final mLightsOutListener:Landroid/view/View$OnTouchListener;

.field private mRequestedMode:I

.field private mVertical:Z

.field private final mView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

.field private translucentDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;)V
    .locals 3

    const v1, 0x7f020190

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2}, Lcom/android/systemui/statusbar/phone/BarTransitions;-><init>(Landroid/view/View;IZ)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->translucentDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v1, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$2;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mLightsOutListener:Landroid/view/View$OnTouchListener;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    const-string v1, "statusbar"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020192

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->translucentDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;ZZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->applyLightsOut(ZZZ)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;)Lcom/android/internal/statusbar/IStatusBarService;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    return-object v0
.end method

.method private alphaForMode(I)F
    .locals 3

    const/high16 v2, 0x3f80

    if-eqz p1, :cond_0

    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    :cond_1
    return v2

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private applyLightsOut(ZZZ)V
    .locals 11

    const/16 v0, 0xfa

    const/16 v6, 0x8

    const/4 v5, 0x0

    const/high16 v2, 0x3f80

    const/4 v7, 0x0

    if-nez p3, :cond_0

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mLightsOut:Z

    if-ne p1, v8, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mLightsOut:Z

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getCurrentView()Landroid/view/View;

    move-result-object v8

    const v9, 0x7f070013

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getCurrentView()Landroid/view/View;

    move-result-object v8

    const v9, 0x7f070018

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewPropertyAnimator;->cancel()V

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewPropertyAnimator;->cancel()V

    if-eqz p1, :cond_1

    move v4, v7

    :goto_1
    if-eqz p1, :cond_2

    :goto_2
    if-nez p2, :cond_4

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    if-eqz p1, :cond_3

    :goto_3
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    move v4, v2

    goto :goto_1

    :cond_2
    move v2, v7

    goto :goto_2

    :cond_3
    move v5, v6

    goto :goto_3

    :cond_4
    if-eqz p1, :cond_5

    :cond_5
    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    int-to-long v9, v0

    invoke-virtual {v8, v9, v10}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mLightsOutListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v8}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-ne v8, v6, :cond_6

    invoke-virtual {v1, v7}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    int-to-long v6, v0

    invoke-virtual {v5, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    new-instance v6, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v7, 0x4000

    invoke-direct {v6, v7}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    if-eqz p1, :cond_7

    const/4 v5, 0x0

    :goto_4
    invoke-virtual {v6, v5}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/16 :goto_0

    :cond_7
    new-instance v5, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$1;

    invoke-direct {v5, p0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$1;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;Landroid/view/View;)V

    goto :goto_4
.end method

.method private applyMode(IZZ)V
    .locals 3

    const/high16 v2, 0x3f00

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->alphaForMode(I)F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeButton()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, v0, p2}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->setKeyButtonViewQuiescentAlpha(Landroid/view/View;FZ)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButton()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, v0, p2}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->setKeyButtonViewQuiescentAlpha(Landroid/view/View;FZ)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getMenuButton()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, v0, p2}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->setKeyButtonViewQuiescentAlpha(Landroid/view/View;FZ)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getSearchLight()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, v2, p2}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->setKeyButtonViewQuiescentAlpha(Landroid/view/View;FZ)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getCameraButton()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, v2, p2}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->setKeyButtonViewQuiescentAlpha(Landroid/view/View;FZ)V

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->applyBackButtonQuiescentAlpha(IZ)V

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-direct {p0, v1, p2, p3}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->applyLightsOut(ZZZ)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private fadeContent(Landroid/view/View;F)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    :cond_0
    return-void
.end method

.method private static maxVisibleQuiescentAlpha(FLandroid/view/View;)F
    .locals 1

    instance-of v0, p1, Lcom/android/systemui/statusbar/policy/KeyButtonView;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getQuiescentAlpha()F

    move-result v0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    :cond_0
    return p0
.end method

.method private setKeyButtonViewQuiescentAlpha(Landroid/view/View;FZ)V
    .locals 1

    instance-of v0, p1, Lcom/android/systemui/statusbar/policy/KeyButtonView;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {p1, p2, p3}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setQuiescentAlpha(FZ)V

    :cond_0
    return-void
.end method


# virtual methods
.method public applyBackButtonQuiescentAlpha(IZ)V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getSearchLight()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->maxVisibleQuiescentAlpha(FLandroid/view/View;)F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getCameraButton()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->maxVisibleQuiescentAlpha(FLandroid/view/View;)F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeButton()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->maxVisibleQuiescentAlpha(FLandroid/view/View;)F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButton()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->maxVisibleQuiescentAlpha(FLandroid/view/View;)F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getMenuButton()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->maxVisibleQuiescentAlpha(FLandroid/view/View;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBackButton()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, v0, p2}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->setKeyButtonViewQuiescentAlpha(Landroid/view/View;FZ)V

    :cond_0
    return-void
.end method

.method public init(Z)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->setVertical(Z)V

    const/4 v0, -0x1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BarTransitions;->getMode()I

    move-result v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/BarTransitions;->applyModeBackground(IIZ)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BarTransitions;->getMode()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v2, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->applyMode(IZZ)V

    return-void
.end method

.method protected onTransition(IIZ)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/BarTransitions;->onTransition(IIZ)V

    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->applyMode(IZZ)V

    return-void
.end method

.method public setContentVisible(Z)V
    .locals 2

    if-eqz p1, :cond_0

    const/high16 v0, 0x3f80

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getCameraButton()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->fadeContent(Landroid/view/View;F)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getSearchLight()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->fadeContent(Landroid/view/View;F)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setVertical(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mVertical:Z

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mRequestedMode:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->transitionTo(IZ)V

    return-void
.end method

.method public transitionTo(IZ)V
    .locals 4

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mRequestedMode:I

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mVertical:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BarTransitions;->getMode()I

    move-result v0

    sget-boolean v1, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->DEBUG_INTERNAL:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mRequestedMode:I

    if-eq v0, v1, :cond_1

    const-string v1, "NavigationBarTransitions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "transition("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->modeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mRequestedMode:I

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->modeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") vertical:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mVertical:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/BarTransitions;->transitionTo(IZ)V

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/BarTransitions;->mSupportsTransitions:Z

    if-nez v1, :cond_2

    packed-switch p1, :pswitch_data_0

    :goto_0
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->applyMode(IZZ)V

    :cond_2
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    const/high16 v2, -0x100

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    const-string v2, "#99000000"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->translucentDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
