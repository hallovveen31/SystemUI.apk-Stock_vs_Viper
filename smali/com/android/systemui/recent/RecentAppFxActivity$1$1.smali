.class Lcom/android/systemui/recent/RecentAppFxActivity$1$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "RecentAppFxActivity.java"


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

.field private final synthetic val$child:Landroid/view/View;

.field private final synthetic val$viewHolder:Lcom/android/systemui/recent/RecentAppFxActivity$ViewHolder;


# direct methods
.method constructor <init>(Lcom/android/systemui/recent/RecentAppFxActivity$1;Landroid/view/View;Lcom/android/systemui/recent/RecentAppFxActivity$ViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recent/RecentAppFxActivity$1$1;->this$1:Lcom/android/systemui/recent/RecentAppFxActivity$1;

    iput-object p2, p0, Lcom/android/systemui/recent/RecentAppFxActivity$1$1;->val$child:Landroid/view/View;

    iput-object p3, p0, Lcom/android/systemui/recent/RecentAppFxActivity$1$1;->val$viewHolder:Lcom/android/systemui/recent/RecentAppFxActivity$ViewHolder;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/recent/RecentAppFxActivity$1$1;->val$child:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/systemui/recent/RecentAppFxActivity$1$1;->val$viewHolder:Lcom/android/systemui/recent/RecentAppFxActivity$ViewHolder;

    iget-object v0, v0, Lcom/android/systemui/recent/RecentAppFxActivity$ViewHolder;->text1:Landroid/widget/TextView;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/recent/RecentAppFxActivity$1$1;->val$child:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/recent/RecentsItemView;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/RecentsItemView;->setDrawableAlpha(I)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/recent/RecentAppFxActivity$1$1;->val$child:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/systemui/recent/RecentAppFxActivity$1$1;->val$viewHolder:Lcom/android/systemui/recent/RecentAppFxActivity$ViewHolder;

    iget-object v0, v0, Lcom/android/systemui/recent/RecentAppFxActivity$ViewHolder;->text1:Landroid/widget/TextView;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/recent/RecentAppFxActivity$1$1;->val$child:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/recent/RecentsItemView;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/RecentsItemView;->setDrawableAlpha(I)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/recent/RecentAppFxActivity$1$1;->val$child:Landroid/view/View;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method
