.class Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual$3;
.super Ljava/lang/Object;
.source "CarrierLabelDual.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual$3;->this$0:Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual$3;->this$0:Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;

    #calls: Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->getServiceState(Z)I
    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->access$1600(Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;Z)I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual$3;->this$0:Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;

    #getter for: Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSpnLabel:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->access$2200(Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual$3;->this$0:Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual$3;->this$0:Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;

    #getter for: Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSearchingIdx:I
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->access$1800(Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual$3;->this$0:Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;

    #getter for: Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSearchingString:[I
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->access$1900(Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;)[I

    move-result-object v4

    array-length v4, v4

    rem-int/2addr v3, v4

    #setter for: Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSearchingIdx:I
    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->access$1802(Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;I)I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual$3;->this$0:Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;

    #getter for: Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSpnLabel:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->access$2200(Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual$3;->this$0:Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;

    #getter for: Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSearchingString:[I
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->access$1900(Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;)[I

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual$3;->this$0:Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;

    #getter for: Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSearchingIdx:I
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->access$1800(Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;)I

    move-result v4

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual$3;->this$0:Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;

    #calls: Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->addSeperator()V
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->access$1500(Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual$3;->this$0:Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;

    #getter for: Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mNWKSearchingHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->access$2100(Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual$3;->this$0:Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;

    #getter for: Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mNWKRunnableSlo2:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->access$2300(Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual$3;->this$0:Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;

    #getter for: Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mNWKSearchingHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->access$2100(Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual$3;->this$0:Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;

    #getter for: Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mNWKRunnableSlo2:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->access$2300(Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;)Ljava/lang/Runnable;

    move-result-object v3

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual$3;->this$0:Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual$3;->this$0:Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;

    #setter for: Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSearchingIdx:I
    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->access$1802(Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;I)I

    goto :goto_0
.end method
