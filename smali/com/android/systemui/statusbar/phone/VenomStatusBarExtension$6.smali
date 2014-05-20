.class Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$6;
.super Ljava/lang/Object;
.source "VenomStatusBarExtension.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$6;->this$0:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$6;->this$0:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;

    #getter for: Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mWidgetsContainer:Landroid/widget/ViewSwitcher;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->access$38(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)Landroid/widget/ViewSwitcher;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$6;->this$0:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;

    #getter for: Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mWidgetsContainer:Landroid/widget/ViewSwitcher;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->access$38(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)Landroid/widget/ViewSwitcher;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$6;->this$0:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;

    #getter for: Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mWidgetsDivider:Lcom/android/systemui/statusbar/widget/DividerView;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->access$39(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)Lcom/android/systemui/statusbar/widget/DividerView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension$6;->this$0:Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;

    #getter for: Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->mWidgetsDivider:Lcom/android/systemui/statusbar/widget/DividerView;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;->access$39(Lcom/android/systemui/statusbar/phone/VenomStatusBarExtension;)Lcom/android/systemui/statusbar/widget/DividerView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/widget/DividerView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
