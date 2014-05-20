.class public Lcom/android/systemui/statusbar/widget/HtcLinearLayout;
.super Landroid/widget/LinearLayout;
.source "HtcLinearLayout.java"


# instance fields
.field private mIgnoreClickableEnabled:Z

.field private mIsEnablePressAnimation:Z

.field mPressAnimators:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/view/View;",
            "Landroid/animation/ObjectAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private mPressShadowTopBottom:Landroid/graphics/drawable/Drawable;

.field mPressedViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mScaleXDifference:I

.field private mScaleYDifference:I

.field private mTraverseLevel:I

.field private shadowBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/16 v1, 0xa

    const/4 v0, 0x1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/widget/HtcLinearLayout;->mIgnoreClickableEnabled:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/widget/HtcLinearLayout;->mIsEnablePressAnimation:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/widget/HtcLinearLayout;->mPressAnimators:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/widget/HtcLinearLayout;->mPressedViews:Ljava/util/ArrayList;

    iput v1, p0, Lcom/android/systemui/statusbar/widget/HtcLinearLayout;->mScaleXDifference:I

    iput v1, p0, Lcom/android/systemui/statusbar/widget/HtcLinearLayout;->mScaleYDifference:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/systemui/statusbar/widget/HtcLinearLayout;->mTraverseLevel:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/widget/HtcLinearLayout;->shadowBounds:Landroid/graphics/Rect;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/widget/HtcLinearLayout;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/16 v1, 0xa

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/widget/HtcLinearLayout;->mIgnoreClickableEnabled:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/widget/HtcLinearLayout;->mIsEnablePressAnimation:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/widget/HtcLinearLayout;->mPressAnimators:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/widget/HtcLinearLayout;->mPressedViews:Ljava/util/ArrayList;

    iput v1, p0, Lcom/android/systemui/statusbar/widget/HtcLinearLayout;->mScaleXDifference:I

    iput v1, p0, Lcom/android/systemui/statusbar/widget/HtcLinearLayout;->mScaleYDifference:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/systemui/statusbar/widget/HtcLinearLayout;->mTraverseLevel:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/widget/HtcLinearLayout;->shadowBounds:Landroid/graphics/Rect;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/widget/HtcLinearLayout;->init(Landroid/content/Context;)V

    return-void
.end method

.method private IsClickableEnabled(Landroid/view/View;)Z
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/widget/HtcLinearLayout;->mIgnoreClickableEnabled:Z

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->isClickable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private cancelPressAnimation()V
    .locals 6

    const/high16 v5, 0x3f80

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/widget/HtcLinearLayout;->mPressedViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v1, v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/widget/HtcLinearLayout;->mPressedViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-object v3, p0, Lcom/android/systemui/statusbar/widget/HtcLinearLayout;->mPressAnimators:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/widget/HtcLinearLayout;->mPressedViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/statusbar/widget/HtcLinearLayout;->mPressAnimators:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    iget-object v3, p0, Lcom/android/systemui/statusbar/widget/HtcLinearLayout;->mPressAnimators:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v2, v5}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setScaleY(F)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private findMotionViewByLevel(II)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method private get2DPressAnimation(Landroid/view/View;)Landroid/animation/ObjectAnimator;
    .locals 12

    const/high16 v11, 0x3f80

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v2, v5

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v1, v5

    iget v5, p0, Lcom/android/systemui/statusbar/widget/HtcLinearLayout;->mScaleXDifference:I

    int-to-float v5, v5

    sub-float v5, v2, v5

    div-float v3, v5, v2

    iget v5, p0, Lcom/android/systemui/statusbar/widget/HtcLinearLayout;->mScaleYDifference:I

    int-to-float v5, v5

    sub-float v5, v1, v5

    div-float v4, v5, v1

    new-array v5, v10, [Landroid/animation/PropertyValuesHolder;

    const-string v6, "scaleX"

    new-array v7, v10, [F

    aput v11, v7, v8

    aput v3, v7, v9

    invoke-static {v6, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    aput-object v6, v5, v8

    const-string v6, "scaleY"

    new-array v7, v10, [F

    aput v11, v7, v8

    aput v4, v7, v9

    invoke-static {v6, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {p1, v5}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v5, 0x64

    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 6

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x2080082

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/widget/HtcLinearLayout;->mPressShadowTopBottom:Landroid/graphics/drawable/Drawable;

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "listview_scalex_difference"

    const-string v4, "integer"

    const-string v5, "com.htc"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "listview_scaley_difference"

    const-string v4, "integer"

    const-string v5, "com.htc"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/widget/HtcLinearLayout;->mScaleXDifference:I

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/widget/HtcLinearLayout;->mScaleYDifference:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/widget/HtcLinearLayout;->mPressedViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/widget/HtcLinearLayout;->mPressShadowTopBottom:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/systemui/statusbar/widget/HtcLinearLayout;->shadowBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/widget/HtcLinearLayout;->mPressShadowTopBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/widget/HtcLinearLayout;->mIsEnablePressAnimation:Z

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    iget v3, p0, Lcom/android/systemui/statusbar/widget/HtcLinearLayout;->mTraverseLevel:I

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/statusbar/widget/HtcLinearLayout;->findMotionViewByLevel(II)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/widget/HtcLinearLayout;->IsClickableEnabled(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/widget/HtcLinearLayout;->mPressedViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/widget/HtcLinearLayout;->get2DPressAnimation(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/widget/HtcLinearLayout;->mPressAnimators:Ljava/util/Map;

    iget-object v3, p0, Lcom/android/systemui/statusbar/widget/HtcLinearLayout;->mPressedViews:Ljava/util/ArrayList;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/widget/HtcLinearLayout;->mPressAnimators:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/widget/HtcLinearLayout;->invalidate()V

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    return v2

    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/widget/HtcLinearLayout;->cancelPressAnimation()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/widget/HtcLinearLayout;->invalidate()V

    goto :goto_0
.end method

.method public enablePressAnimation(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/widget/HtcLinearLayout;->mIsEnablePressAnimation:Z

    return-void
.end method

.method public setIgnoreClickableEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/widget/HtcLinearLayout;->mIgnoreClickableEnabled:Z

    return-void
.end method

.method public setTraverseLevel(I)V
    .locals 1

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/widget/HtcLinearLayout;->mTraverseLevel:I

    goto :goto_0
.end method
