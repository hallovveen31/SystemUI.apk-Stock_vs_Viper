.class Lcom/android/systemui/screenshot/GlobalScreenshot$9;
.super Ljava/lang/Object;
.source "GlobalScreenshot.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/screenshot/GlobalScreenshot;->createScreenshotDropOutAnimation(IIZZ)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

.field private final synthetic val$globalScreenshot$10:Landroid/view/animation/Interpolator;

.field private final synthetic val$pointF:Landroid/graphics/PointF;


# direct methods
.method constructor <init>(Lcom/android/systemui/screenshot/GlobalScreenshot;Landroid/view/animation/Interpolator;Landroid/graphics/PointF;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$9;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    iput-object p2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$9;->val$globalScreenshot$10:Landroid/view/animation/Interpolator;

    iput-object p3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$9;->val$pointF:Landroid/graphics/PointF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 7

    const/high16 v6, 0x3f80

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    const v2, 0x3f39999a

    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$9;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    #getter for: Lcom/android/systemui/screenshot/GlobalScreenshot;->mBgPaddingScale:F
    invoke-static {v3}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$3(Lcom/android/systemui/screenshot/GlobalScreenshot;)F

    move-result v3

    add-float/2addr v2, v3

    const v3, 0x3e8cccce

    iget-object v4, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$9;->val$globalScreenshot$10:Landroid/view/animation/Interpolator;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-interface {v4, v5}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v4

    mul-float/2addr v3, v4

    sub-float v1, v2, v3

    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$9;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    #getter for: Lcom/android/systemui/screenshot/GlobalScreenshot;->mBackgroundView:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$1(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v2

    const/high16 v3, 0x3f00

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v4

    sub-float v4, v6, v4

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$9;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    #getter for: Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$2(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$9;->val$globalScreenshot$10:Landroid/view/animation/Interpolator;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-interface {v3, v4}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    sub-float v3, v6, v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$9;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    #getter for: Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$2(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setScaleX(F)V

    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$9;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    #getter for: Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$2(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setScaleY(F)V

    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$9;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    #getter for: Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$2(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$9;->val$pointF:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationX(F)V

    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$9;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    #getter for: Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$2(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$9;->val$pointF:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method
