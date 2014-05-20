.class public Lcom/android/systemui/statusbar/preference/NFC;
.super Lcom/android/systemui/statusbar/preference/StatusBarPreference;
.source "NFC.java"


# instance fields
.field private final OFF:I

.field private final ON:I

.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mContext:Landroid/content/Context;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/preference/StatusBarPreference;-><init>(Landroid/content/Context;Landroid/view/View;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/preference/NFC;->OFF:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/statusbar/preference/NFC;->ON:I

    new-instance v0, Lcom/android/systemui/statusbar/preference/NFC$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/preference/NFC$1;-><init>(Lcom/android/systemui/statusbar/preference/NFC;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/NFC;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/systemui/statusbar/preference/NFC;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/systemui/statusbar/preference/NFC$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/preference/NFC$2;-><init>(Lcom/android/systemui/statusbar/preference/NFC;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/NFC;->mClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/systemui/statusbar/preference/NFC$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/preference/NFC$3;-><init>(Lcom/android/systemui/statusbar/preference/NFC;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/NFC;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/preference/NFC;->init()V

    return-void
.end method

.method static synthetic access$0(Lcom/android/systemui/statusbar/preference/NFC;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/preference/NFC;->handleNfcStateChanged(I)V

    return-void
.end method

.method static synthetic access$1(Lcom/android/systemui/statusbar/preference/NFC;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/preference/NFC;->setNFCState(I)V

    return-void
.end method

.method static synthetic access$2(Lcom/android/systemui/statusbar/preference/NFC;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/NFC;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private handleNfcStateChanged(I)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/NFC;->mCheckBox:Lcom/htc/widget/HtcToggleButtonLight;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcToggleButtonLight;->setChecked(Z)V

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/preference/NFC;->setSummary(I)V

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/preference/NFC;->setEnabled(Z)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/preference/NFC;->setEnabled(Z)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/NFC;->mCheckBox:Lcom/htc/widget/HtcToggleButtonLight;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcToggleButtonLight;->setChecked(Z)V

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/preference/NFC;->setSummary(I)V

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/preference/NFC;->setEnabled(Z)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/preference/NFC;->setEnabled(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private refreshSummary()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/NFC;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/NFC;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/preference/NFC;->setSummary(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/preference/NFC;->setSummary(I)V

    goto :goto_0
.end method

.method private setNFCState(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/NFC;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/NFC;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->enable()Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/NFC;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->disable()Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/NFC;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/NFC;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/NFC;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/NFC;->mContext:Landroid/content/Context;

    const-string v1, "A problem ocurred"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private setSummary(I)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/NFC;->mSummary:Landroid/widget/TextView;

    const v1, 0x7f0a0153

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/NFC;->mSummary:Landroid/widget/TextView;

    const v1, 0x7f0a0154

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public init()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/NFC;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f0a014b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/NFC;->mIcon:Landroid/widget/ImageView;

    const v1, 0x7f020538

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/preference/NFC;->getThemeResource(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/NFC;->mIntentFilter:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/NFC;->mContentView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/NFC;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/NFC;->mContentView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/NFC;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/NFC;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/NFC;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    return-void
.end method

.method public onStart()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/NFC;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/NFC;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/NFC;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/NFC;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/NFC;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/NFC;->mCheckBox:Lcom/htc/widget/HtcToggleButtonLight;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcToggleButtonLight;->setChecked(Z)V

    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/NFC;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/NFC;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/NFC;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/preference/NFC;->refreshSummary()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/NFC;->mCheckBox:Lcom/htc/widget/HtcToggleButtonLight;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcToggleButtonLight;->setChecked(Z)V

    goto :goto_1
.end method

.method public onStop()V
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/NFC;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/NFC;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/NFC;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Venom"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error unregistering NFC receiver: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateResources()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->updateResources()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/NFC;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f0a014b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/preference/NFC;->refreshSummary()V

    return-void
.end method
