.class public Lcom/android/systemui/statusbar/powerwidget/NFC;
.super Lcom/android/systemui/statusbar/powerwidget/Toggle;
.source "NFC.java"


# static fields
.field public static final ADAPTER_STATE_CHANGED:Ljava/lang/String; = "android.nfc.action.ADAPTER_STATE_CHANGED"

.field public static final FILTER:Landroid/content/IntentFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/powerwidget/NFC;->FILTER:Landroid/content/IntentFilter;

    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/NFC;->FILTER:Landroid/content/IntentFilter;

    const-string v1, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/powerwidget/Toggle;-><init>()V

    const v0, 0x7f0a014b

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/powerwidget/NFC;->setTitle(I)V

    return-void
.end method


# virtual methods
.method protected getBroadcastIntentFilter()Landroid/content/IntentFilter;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/NFC;->FILTER:Landroid/content/IntentFilter;

    return-object v0
.end method

.method protected getCurrentState()Lcom/android/systemui/statusbar/powerwidget/Toggle$State;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/NFC;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->isEnabled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/powerwidget/NFC;->booleanToState(Z)Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected getIconForState(Z)I
    .locals 1

    if-eqz p1, :cond_0

    const v0, 0x7f02058e

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f02058d

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.nfc.action.ADAPTER_STATE_CHANGED"

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/powerwidget/NFC;->getCurrentState()Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/powerwidget/NFC;->setCurrentState(Lcom/android/systemui/statusbar/powerwidget/Toggle$State;)V

    :cond_0
    return-void
.end method

.method protected onToggleClick()V
    .locals 5

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/powerwidget/NFC;->getCurrentState()Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

    move-result-object v3

    sget-object v4, Lcom/android/systemui/statusbar/powerwidget/Toggle$State;->DISABLED:Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

    if-ne v3, v4, :cond_0

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_1

    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/powerwidget/NFC;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/nfc/NfcAdapter;->enable()Z

    :goto_1
    if-eqz v1, :cond_2

    sget-object v3, Lcom/android/systemui/statusbar/powerwidget/Toggle$State;->TURNING_ON:Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

    :goto_2
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/powerwidget/NFC;->setCurrentState(Lcom/android/systemui/statusbar/powerwidget/Toggle$State;)V

    :goto_3
    return-void

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/powerwidget/NFC;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/nfc/NfcAdapter;->disable()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v3, p0, Lcom/android/systemui/statusbar/powerwidget/NFC;->mContext:Landroid/content/Context;

    const-string v4, "Error when changing NFC adapter state"

    invoke-static {v3, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_3

    :cond_2
    :try_start_1
    sget-object v3, Lcom/android/systemui/statusbar/powerwidget/Toggle$State;->TURNING_OFF:Lcom/android/systemui/statusbar/powerwidget/Toggle$State;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method protected onToggleLongClick()Z
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.NFC_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/powerwidget/NFC;->startActivity(Landroid/content/Intent;)V

    const/4 v1, 0x1

    return v1
.end method
