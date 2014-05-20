.class Lcom/android/systemui/statusbar/phone/CarrierLabel$2;
.super Ljava/lang/Object;
.source "CarrierLabel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/CarrierLabel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/CarrierLabel;)V
    .locals 0
    .parameter

    .prologue
    .line 463
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$2;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 465
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$2;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    #calls: Lcom/android/systemui/statusbar/phone/CarrierLabel;->getServiceState()I
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->access$800(Lcom/android/systemui/statusbar/phone/CarrierLabel;)I

    move-result v1

    .line 466
    .local v1, serviceState:I
    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 467
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$2;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$2;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    iget v3, v3, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mSearchingIdx:I

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$2;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mSearchingString:[I

    array-length v4, v4

    rem-int/2addr v3, v4

    iput v3, v2, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mSearchingIdx:I

    .line 468
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$2;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    #getter for: Lcom/android/systemui/statusbar/phone/CarrierLabel;->mPlmnLabel:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->access$600(Lcom/android/systemui/statusbar/phone/CarrierLabel;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$2;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mSearchingString:[I

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$2;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    iget v4, v4, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mSearchingIdx:I

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 469
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$2;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    #getter for: Lcom/android/systemui/statusbar/phone/CarrierLabel;->mNWKSearchingHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->access$1000(Lcom/android/systemui/statusbar/phone/CarrierLabel;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$2;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    #getter for: Lcom/android/systemui/statusbar/phone/CarrierLabel;->mNWKRunnable:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->access$900(Lcom/android/systemui/statusbar/phone/CarrierLabel;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 470
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$2;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    #getter for: Lcom/android/systemui/statusbar/phone/CarrierLabel;->mNWKSearchingHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->access$1000(Lcom/android/systemui/statusbar/phone/CarrierLabel;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$2;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    #getter for: Lcom/android/systemui/statusbar/phone/CarrierLabel;->mNWKRunnable:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->access$900(Lcom/android/systemui/statusbar/phone/CarrierLabel;)Ljava/lang/Runnable;

    move-result-object v3

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 471
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$2;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 472
    .local v0, parent:Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 476
    .end local v0           #parent:Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 474
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$2;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    const/4 v3, 0x0

    iput v3, v2, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mSearchingIdx:I

    goto :goto_0
.end method
