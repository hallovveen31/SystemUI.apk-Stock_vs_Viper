.class Lcom/android/systemui/statusbar/preference/NFC$1;
.super Landroid/content/BroadcastReceiver;
.source "NFC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/preference/NFC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/preference/NFC;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/preference/NFC;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/preference/NFC$1;->this$0:Lcom/android/systemui/statusbar/preference/NFC;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string v0, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/NFC$1;->this$0:Lcom/android/systemui/statusbar/preference/NFC;

    const-string v1, "android.nfc.extra.ADAPTER_STATE"

    const/4 v2, 0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    #calls: Lcom/android/systemui/statusbar/preference/NFC;->handleNfcStateChanged(I)V
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/preference/NFC;->access$0(Lcom/android/systemui/statusbar/preference/NFC;I)V

    :cond_0
    return-void
.end method
