.class Lcom/android/systemui/screenshot/GlobalScreenshot$7;
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


# direct methods
.method constructor <init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$7;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    const/high16 v5, 0x3f80

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    const v2, 0x3f39999a

    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$7;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    #getter for: Lcom/android/systemui/screenshot/GlobalScreenshot;->mBgPaddingScale:F
    invoke-static {v3}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$3(Lcom/android/systemui/screenshot/GlobalScreenshot;)F

    move-result v3

    add-float/2addr v2, v3

    const/high16 v3, 0x3e00

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v4

    mul-float/2addr v3, v4

    sub-float v1, v2, v3

    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$7;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    #getter for: Lcom/android/systemui/screenshot/GlobalScreenshot;->mBackgroundView:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$1(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v2

    const/high16 v3, 0x3f00

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v4

    sub-float v4, v5, v4

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$7;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    #getter for: Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$2(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    sub-float v3, v5, v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$7;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    #getter for: Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$2(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setScaleX(F)V

    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$7;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    #getter for: Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$2(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method
