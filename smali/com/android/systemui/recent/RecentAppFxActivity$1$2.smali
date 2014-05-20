.class Lcom/android/systemui/recent/RecentAppFxActivity$1$2;
.super Ljava/lang/Object;
.source "RecentAppFxActivity.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recent/RecentAppFxActivity$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/recent/RecentAppFxActivity$1;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/recent/RecentAppFxActivity$1;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 167
    iput-object p1, p0, Lcom/android/systemui/recent/RecentAppFxActivity$1$2;->this$1:Lcom/android/systemui/recent/RecentAppFxActivity$1;

    iput-object p2, p0, Lcom/android/systemui/recent/RecentAppFxActivity$1$2;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .parameter "animator"

    .prologue
    .line 169
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/high16 v2, 0x437f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 170
    .local v0, alpha:Ljava/lang/Float;
    iget-object v1, p0, Lcom/android/systemui/recent/RecentAppFxActivity$1$2;->val$v:Landroid/view/View;

    check-cast v1, Lcom/android/systemui/recent/RecentsItemView;

    invoke-virtual {v0}, Ljava/lang/Float;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/recent/RecentsItemView;->setDrawableAlpha(I)V

    .line 171
    return-void
.end method
