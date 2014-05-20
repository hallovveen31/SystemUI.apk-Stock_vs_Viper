.class Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc$2;
.super Landroid/content/BroadcastReceiver;
.source "QuickSettingNfc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc$2;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const/high16 v5, 0x3f00

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc$2;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->nfcAdapter:Landroid/nfc/NfcAdapter;
    invoke-static {v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->access$100(Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc$2;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;

    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc$2;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->access$200(Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v2

    #setter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->nfcAdapter:Landroid/nfc/NfcAdapter;
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->access$102(Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;Landroid/nfc/NfcAdapter;)Landroid/nfc/NfcAdapter;

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc$2;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->nfcAdapter:Landroid/nfc/NfcAdapter;
    invoke-static {v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->access$100(Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc$2;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;

    invoke-virtual {v1, v5}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc$2;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc$2;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->indicatorview:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;
    invoke-static {v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->access$300(Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;)Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->setLevel(II)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc$2;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;
    invoke-static {v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->access$400(Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;)Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->stopColorAnimation()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc$2;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;
    invoke-static {v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->access$400(Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;)Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->setOverlayEnable(Z)V

    const-string v1, "QuickSettingNfc"

    const-string v2, "receive.ADAPTER_STATE_CHANGE:null nfc adapter!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    const-string v1, "android.nfc.extra.ADAPTER_STATE"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc$2;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;

    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc$2;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->nfcAdapter:Landroid/nfc/NfcAdapter;
    invoke-static {v2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->access$100(Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;)Landroid/nfc/NfcAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v2

    #setter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->nfcEnable:Z
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->access$502(Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;Z)Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc$2;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;

    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc$2;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->nfcAdapter:Landroid/nfc/NfcAdapter;
    invoke-static {v2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->access$100(Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;)Landroid/nfc/NfcAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->isNfcLocked()Z

    move-result v2

    #setter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->nfcLocked:Z
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->access$602(Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;Z)Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc$2;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;

    const/high16 v2, 0x3f80

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    packed-switch v0, :pswitch_data_0

    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc$2;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->nfcLocked:Z
    invoke-static {v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->access$600(Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;)Z

    move-result v1

    if-ne v1, v4, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc$2;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;

    invoke-virtual {v1, v5}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc$2;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setEnabled(Z)V

    :cond_2
    const-string v1, "QuickSettingNfc"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "receive.ADAPTER_STATE_CHANGED:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc$2;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;

    #calls: Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->stateToString(I)Ljava/lang/String;
    invoke-static {v3, v0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->access$800(Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " nfcLocked:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc$2;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->nfcLocked:Z
    invoke-static {v3}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->access$600(Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " nfcEnable:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc$2;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->nfcEnable:Z
    invoke-static {v3}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->access$500(Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc$2;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;

    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc$2;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->nfcEnable:Z
    invoke-static {v2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->access$500(Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;)Z

    move-result v2

    #calls: Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->setNfcItemEnable(Z)V
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->access$700(Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;Z)V

    goto :goto_1

    :pswitch_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc$2;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc$2;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;
    invoke-static {v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->access$400(Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;)Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->startColorAnimation()V

    goto :goto_1

    :pswitch_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc$2;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;

    #calls: Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->setNfcItemEnable(Z)V
    invoke-static {v1, v3}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->access$700(Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;Z)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
