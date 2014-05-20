.class Lcom/android/systemui/statusbar/phone/CarrierLabel$1;
.super Landroid/content/BroadcastReceiver;
.source "CarrierLabel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/CarrierLabel;
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

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$1;->this$0$:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$1;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    const/4 v8, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v4, "CarrierLabel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "---------- mIntentReceiver : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "networkState"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$1;->this$0$:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    const-string v5, "unregistered_icc"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, v4, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mUnregisteredSIM:Z

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$1;->this$0$:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    const-string v5, "unregistered_icc_code"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    #setter for: Lcom/android/systemui/statusbar/phone/CarrierLabel;->mUnregisteredSIMCode:I
    invoke-static {v4, v5}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->access$0(Lcom/android/systemui/statusbar/phone/CarrierLabel;I)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$1;->this$0$:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    const-string v5, "networkState"

    const/4 v6, 0x1

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, v4, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mServiceStatus:I

    const-string v4, "CarrierLabel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mServiceStatus : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$1;->this$0$:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    iget v6, v6, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mServiceStatus:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$1;->this$0$:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    iget v4, v4, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mServiceStatus:I

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$1;->this$0$:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    const-string v5, "showSpn"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, v4, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mShowSpn:Z

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$1;->this$0$:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    const-string v5, "spn"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mSPN:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$1;->this$0$:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    const-string v5, "showPlmn"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, v4, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mShowPlmn:Z

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$1;->this$0$:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    const-string v5, "plmn"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mPLMN:Ljava/lang/String;

    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$1;->this$0$:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->updateNetworkNameExt()V

    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$1;->this$0$:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    #getter for: Lcom/android/systemui/statusbar/phone/CarrierLabel;->mNetworkTextView:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->access$3(Lcom/android/systemui/statusbar/phone/CarrierLabel;)Landroid/widget/TextView;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$1;->this$0$:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    #getter for: Lcom/android/systemui/statusbar/phone/CarrierLabel;->mPlmnLabel:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->access$4(Lcom/android/systemui/statusbar/phone/CarrierLabel;)Landroid/widget/TextView;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$1;->this$0$:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    #getter for: Lcom/android/systemui/statusbar/phone/CarrierLabel;->mNetworkTextView:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->access$3(Lcom/android/systemui/statusbar/phone/CarrierLabel;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$1;->this$0$:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    #getter for: Lcom/android/systemui/statusbar/phone/CarrierLabel;->mPlmnLabel:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->access$4(Lcom/android/systemui/statusbar/phone/CarrierLabel;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$1;->this$0$:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    #getter for: Lcom/android/systemui/statusbar/phone/CarrierLabel;->mNetworkTextView:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->access$3(Lcom/android/systemui/statusbar/phone/CarrierLabel;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$1;->this$0$:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    #getter for: Lcom/android/systemui/statusbar/phone/CarrierLabel;->mPlmnLabel:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->access$4(Lcom/android/systemui/statusbar/phone/CarrierLabel;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$1;->this$0$:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    #calls: Lcom/android/systemui/statusbar/phone/CarrierLabel;->addSeperator()V
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->access$5(Lcom/android/systemui/statusbar/phone/CarrierLabel;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$1;->this$0$:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    :cond_2
    return-void

    :cond_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$1;->this$0$:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    iput-boolean v8, v4, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mShowSpn:Z

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$1;->this$0$:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    const-string v5, ""

    iput-object v5, v4, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mSPN:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$1;->this$0$:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    iput-boolean v8, v4, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mShowPlmn:Z

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$1;->this$0$:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    const-string v5, ""

    iput-object v5, v4, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mPLMN:Ljava/lang/String;

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$1;->this$0$:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    const-string v5, "showSpn"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    const-string v6, "spn"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "showPlmn"

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    const-string v8, "plmn"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;)V

    goto/16 :goto_1

    :cond_5
    const-string v4, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$1;->this$0$:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->updateResources()V

    const-string v4, "AutoTest"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[SystemUI][ConfigurationChange_CarrierLabel]["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "][ms][Lower is better]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_6
    const-string v4, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$1;->this$0$:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    #calls: Lcom/android/systemui/statusbar/phone/CarrierLabel;->updateIccState(Landroid/content/Intent;)V
    invoke-static {v4, p2}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->access$1(Lcom/android/systemui/statusbar/phone/CarrierLabel;Landroid/content/Intent;)V

    goto/16 :goto_1

    :cond_7
    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$1;->this$0$:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    #calls: Lcom/android/systemui/statusbar/phone/CarrierLabel;->updateAirplaneMode()V
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->access$2(Lcom/android/systemui/statusbar/phone/CarrierLabel;)V

    goto/16 :goto_1
.end method
