.class Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual$1;
.super Landroid/content/BroadcastReceiver;
.source "CarrierLabelDual.java"


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

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual$1;->this$0:Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11

    const/16 v5, 0xb

    const/16 v4, 0xa

    const/4 v1, 0x1

    const/4 v10, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v0, "CarrierLabel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "---------- mIntentReceiver : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual$1;->this$0:Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;

    const-string v2, "phone_slot"

    invoke-virtual {p2, v2, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    #setter for: Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mPhoneSlot:I
    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->access$002(Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;I)I

    invoke-static {}, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CarrierLabel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Phone slot = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual$1;->this$0:Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;

    #getter for: Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mPhoneSlot:I
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->access$000(Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual$1;->this$0:Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;

    #getter for: Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mPhoneSlot:I
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->access$000(Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;)I

    move-result v0

    if-ne v0, v4, :cond_6

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual$1;->this$0:Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;

    const-string v2, "showSpn"

    invoke-virtual {p2, v2, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    #setter for: Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mShowSpn:Z
    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->access$202(Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;Z)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual$1;->this$0:Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;

    const-string v2, "spn"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSPN:Ljava/lang/String;
    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->access$302(Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual$1;->this$0:Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;

    const-string v2, "showPlmn"

    invoke-virtual {p2, v2, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    #setter for: Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mShowPlmn:Z
    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->access$402(Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;Z)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual$1;->this$0:Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;

    const-string v2, "plmn"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mPLMN:Ljava/lang/String;
    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->access$502(Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->access$100()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "CarrierLabel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mShowSpn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual$1;->this$0:Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;

    #getter for: Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mShowSpn:Z
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->access$200(Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mSPN = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual$1;->this$0:Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;

    #getter for: Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSPN:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->access$300(Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mShowPlmn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual$1;->this$0:Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;

    #getter for: Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mShowPlmn:Z
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->access$400(Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mPLMN = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual$1;->this$0:Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;

    #getter for: Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mPLMN:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->access$500(Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    const-string v0, "networkState"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual$1;->this$0:Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;

    #getter for: Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mPhoneSlot:I
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->access$000(Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;)I

    move-result v0

    if-ne v0, v4, :cond_7

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual$1;->this$0:Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;

    const-string v2, "networkState"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    #setter for: Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mServiceStatus:I
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->access$1002(Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;I)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual$1;->this$0:Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;

    #getter for: Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mServiceStatus:I
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->access$1000(Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;)I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual$1;->this$0:Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;

    #setter for: Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mShowSpn:Z
    invoke-static {v0, v10}, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->access$202(Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;Z)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual$1;->this$0:Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;

    const-string v1, ""

    #setter for: Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSPN:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->access$302(Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual$1;->this$0:Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;

    #setter for: Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mShowPlmn:Z
    invoke-static {v0, v10}, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->access$402(Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;Z)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual$1;->this$0:Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;

    const-string v1, ""

    #setter for: Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mPLMN:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->access$502(Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;Ljava/lang/String;)Ljava/lang/String;

    :cond_2
    :goto_1
    invoke-static {}, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->access$100()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "CarrierLabel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mServiceStatus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual$1;->this$0:Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;

    #getter for: Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mServiceStatus:I
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->access$1000(Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mServiceStatusSlot2 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual$1;->this$0:Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;

    #getter for: Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mServiceStatusSlot2:I
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->access$1100(Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual$1;->this$0:Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;

    #calls: Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->updateDualSimNetworkNameExt()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->access$1200(Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;)V

    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual$1;->this$0:Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;

    #calls: Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->addSeperator()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->access$1500(Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual$1;->this$0:Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    if-eqz v7, :cond_5

    invoke-virtual {v7}, Landroid/view/View;->invalidate()V

    :cond_5
    return-void

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual$1;->this$0:Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;

    #getter for: Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mPhoneSlot:I
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->access$000(Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;)I

    move-result v0

    if-ne v0, v5, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual$1;->this$0:Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;

    const-string v2, "showSpn"

    invoke-virtual {p2, v2, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    #setter for: Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mShowSpnSlot2:Z
    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->access$602(Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;Z)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual$1;->this$0:Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;

    const-string v2, "spn"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSpnSlot2:Ljava/lang/String;
    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->access$702(Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual$1;->this$0:Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;

    const-string v2, "showPlmn"

    invoke-virtual {p2, v2, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    #setter for: Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mShowPlmnSlot2:Z
    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->access$802(Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;Z)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual$1;->this$0:Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;

    const-string v2, "plmn"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mPlmnSlot2:Ljava/lang/String;
    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->access$902(Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->access$100()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "CarrierLabel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mShowSpnSlot2 = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual$1;->this$0:Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;

    #getter for: Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mShowSpnSlot2:Z
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->access$600(Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mSpnSlot2 = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual$1;->this$0:Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;

    #getter for: Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSpnSlot2:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->access$700(Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mShowPlmnSlot2 = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual$1;->this$0:Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;

    #getter for: Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mShowPlmnSlot2:Z
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->access$800(Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mPlmnSlot2 = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual$1;->this$0:Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;

    #getter for: Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mPlmnSlot2:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->access$900(Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual$1;->this$0:Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;

    #getter for: Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mPhoneSlot:I
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->access$000(Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;)I

    move-result v0

    if-ne v0, v5, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual$1;->this$0:Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;

    const-string v2, "networkState"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    #setter for: Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mServiceStatusSlot2:I
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->access$1102(Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;I)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual$1;->this$0:Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;

    #getter for: Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mServiceStatusSlot2:I
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->access$1100(Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;)I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual$1;->this$0:Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;

    #setter for: Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mShowSpnSlot2:Z
    invoke-static {v0, v10}, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->access$602(Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;Z)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual$1;->this$0:Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;

    const-string v1, ""

    #setter for: Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSpnSlot2:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->access$702(Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual$1;->this$0:Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;

    #setter for: Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mShowPlmnSlot2:Z
    invoke-static {v0, v10}, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->access$802(Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;Z)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual$1;->this$0:Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;

    const-string v1, ""

    #setter for: Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mPlmnSlot2:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->access$902(Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual$1;->this$0:Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;

    #getter for: Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mPhoneSlot:I
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->access$000(Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;)I

    move-result v0

    if-ne v0, v4, :cond_9

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual$1;->this$0:Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual$1;->this$0:Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;

    #getter for: Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mShowSpn:Z
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->access$200(Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;)Z

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual$1;->this$0:Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;

    #getter for: Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSPN:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->access$300(Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual$1;->this$0:Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;

    #getter for: Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mShowPlmn:Z
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->access$400(Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;)Z

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual$1;->this$0:Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;

    #getter for: Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mPLMN:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->access$500(Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;)Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->updateDualSimNetworkName(ZZLjava/lang/String;ZLjava/lang/String;)V
    invoke-static/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->access$1300(Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;ZZLjava/lang/String;ZLjava/lang/String;)V

    goto/16 :goto_2

    :cond_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual$1;->this$0:Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;

    #getter for: Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mPhoneSlot:I
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->access$000(Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;)I

    move-result v0

    if-ne v0, v5, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual$1;->this$0:Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual$1;->this$0:Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;

    #getter for: Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mShowSpnSlot2:Z
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->access$600(Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;)Z

    move-result v2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual$1;->this$0:Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;

    #getter for: Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mSpnSlot2:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->access$700(Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;)Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual$1;->this$0:Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;

    #getter for: Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mShowPlmnSlot2:Z
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->access$800(Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;)Z

    move-result v4

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual$1;->this$0:Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;

    #getter for: Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mPlmnSlot2:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->access$900(Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;)Ljava/lang/String;

    move-result-object v5

    move v1, v10

    #calls: Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->updateDualSimNetworkName(ZZLjava/lang/String;ZLjava/lang/String;)V
    invoke-static/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->access$1300(Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;ZZLjava/lang/String;ZLjava/lang/String;)V

    goto/16 :goto_2

    :cond_a
    const-string v0, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual$1;->this$0:Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->updateResources()V

    const-string v0, "AutoTest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SystemUI][ConfigurationChange_CarrierLabel]["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v8

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "][ms][Lower is better]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_b
    const-string v0, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "com.htc.intent.action.SIM_STATE_CHANGED_EXT"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual$1;->this$0:Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;

    const-string v1, "phone_slot"

    invoke-virtual {p2, v1, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    #setter for: Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mPhoneSlot:I
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->access$002(Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;I)I

    invoke-static {}, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->access$100()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "CarrierLabel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Phone slot = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual$1;->this$0:Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;

    #getter for: Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->mPhoneSlot:I
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->access$000(Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual$1;->this$0:Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;

    #calls: Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->updateIccState(Landroid/content/Intent;)V
    invoke-static {v0, p2}, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->access$1400(Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;Landroid/content/Intent;)V

    goto/16 :goto_2

    :cond_e
    const-string v0, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual$1;->this$0:Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;

    #calls: Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->updateDualSimNetworkNameExt()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;->access$1200(Lcom/android/systemui/statusbar/phone/dual/CarrierLabelDual;)V

    goto/16 :goto_2
.end method
