.class Lcom/android/systemui/statusbar/phone/CarrierLabel$2;
.super Ljava/lang/Object;
.source "CarrierLabel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/CarrierLabel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

.field final synthetic this$0$:Lcom/android/systemui/statusbar/phone/CarrierLabel;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/CarrierLabel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$2;->this$0$:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$2;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$2;->this$0$:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    #calls: Lcom/android/systemui/statusbar/phone/CarrierLabel;->getServiceState()I
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->access$7(Lcom/android/systemui/statusbar/phone/CarrierLabel;)I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$2;->this$0$:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$2;->this$0$:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    iget v2, v2, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mSearchingIdx:I

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$2;->this$0$:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mSearchingString:[I

    array-length v3, v3

    rem-int/2addr v2, v3

    iput v2, v1, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mSearchingIdx:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$2;->this$0$:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    #getter for: Lcom/android/systemui/statusbar/phone/CarrierLabel;->mPlmnLabel:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->access$4(Lcom/android/systemui/statusbar/phone/CarrierLabel;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$2;->this$0$:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mSearchingString:[I

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$2;->this$0$:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    iget v3, v3, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mSearchingIdx:I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$2;->this$0$:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    #getter for: Lcom/android/systemui/statusbar/phone/CarrierLabel;->mNWKSearchingHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->access$8(Lcom/android/systemui/statusbar/phone/CarrierLabel;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$2;->this$0$:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    #getter for: Lcom/android/systemui/statusbar/phone/CarrierLabel;->mNWKRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->access$9(Lcom/android/systemui/statusbar/phone/CarrierLabel;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$2;->this$0$:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    #getter for: Lcom/android/systemui/statusbar/phone/CarrierLabel;->mNWKSearchingHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->access$8(Lcom/android/systemui/statusbar/phone/CarrierLabel;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$2;->this$0$:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    #getter for: Lcom/android/systemui/statusbar/phone/CarrierLabel;->mNWKRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->access$9(Lcom/android/systemui/statusbar/phone/CarrierLabel;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$2;->this$0$:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$2;->this$0$:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    const/4 v2, 0x0

    iput v2, v1, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mSearchingIdx:I

    goto :goto_0
.end method
