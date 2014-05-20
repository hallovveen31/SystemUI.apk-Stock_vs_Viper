.class public Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;
.super Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
.source "QuickSettingNfc.java"


# instance fields
.field private handler:Landroid/os/Handler;

.field private imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

.field private indicatorview:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

.field private nfcAdapter:Landroid/nfc/NfcAdapter;

.field private nfcEnable:Z

.field private nfcLocked:Z

.field private final receiver:Landroid/content/BroadcastReceiver;

.field private receiverRegister:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->handler:Landroid/os/Handler;

    iput-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->indicatorview:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    iput-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    iput-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->nfcAdapter:Landroid/nfc/NfcAdapter;

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->nfcEnable:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->nfcLocked:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->receiverRegister:Z

    new-instance v0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc$2;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->receiver:Landroid/content/BroadcastReceiver;

    const-string v0, "nfc"

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->tileLabel:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->toggleNextNFCstate()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;)Landroid/nfc/NfcAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->nfcAdapter:Landroid/nfc/NfcAdapter;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;Landroid/nfc/NfcAdapter;)Landroid/nfc/NfcAdapter;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->nfcAdapter:Landroid/nfc/NfcAdapter;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;)Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->indicatorview:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;)Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->nfcEnable:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->nfcEnable:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->nfcLocked:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->nfcLocked:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->setNfcItemEnable(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->stateToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getQSIconID()I
    .locals 1

    const v0, 0x7f020134

    return v0
.end method

.method public static getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const-string v0, "null"

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f0a00b9

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private setContentView(Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;)Z
    .locals 9

    const/4 v4, 0x1

    const/high16 v7, 0x3f00

    const/4 v5, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move v4, v5

    :goto_0
    return v4

    :cond_1
    iput-object p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    iput-object p2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->indicatorview:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    iget-object v6, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->nfcAdapter:Landroid/nfc/NfcAdapter;

    iget-object v6, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->nfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v6, :cond_3

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->setNfcItemEnable(Z)V

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setEnabled(Z)V

    invoke-virtual {p0, v7}, Landroid/view/View;->setAlpha(F)V

    :goto_1
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->receiverRegister:Z

    if-nez v5, :cond_2

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->receiverRegister:Z

    iget-object v5, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v7, Landroid/content/IntentFilter;

    const-string v8, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v0, v5, v2

    const-string v5, "QuickSettingNfc"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setContentView."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->nfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->nfcEnable:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " nfcLocked:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->nfcLocked:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " elapse:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v6, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->nfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v6}, Landroid/nfc/NfcAdapter;->isNfcLocked()Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->nfcLocked:Z

    iget-object v6, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->nfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v6}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->nfcEnable:Z

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->nfcLocked:Z

    if-nez v6, :cond_4

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->nfcEnable:Z

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->setNfcItemEnable(Z)V

    goto :goto_1

    :cond_4
    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->setNfcItemEnable(Z)V

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setEnabled(Z)V

    invoke-virtual {p0, v7}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1
.end method

.method private setNfcItemEnable(Z)V
    .locals 3

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->indicatorview:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/high16 v0, 0x3f80

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->stopColorAnimation()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->setOverlayEnable(Z)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->indicatorview:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    if-ne p1, v1, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v2, v0, v1}, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->setLevel(II)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private stateToString(I)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    const-string v0, "STATE_UNKNOWN"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "STATE_ON"

    goto :goto_0

    :pswitch_1
    const-string v0, "STATE_OFF"

    goto :goto_0

    :pswitch_2
    const-string v0, "STATE_TURNING_ON"

    goto :goto_0

    :pswitch_3
    const-string v0, "STATE_TURNING_OFF"

    goto :goto_0

    :pswitch_4
    const-string v0, "STATE_MDM_LOCK"

    goto :goto_0

    :pswitch_5
    const-string v0, "STATE_MDM_UNLOCK"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private toggleNextNFCstate()V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->nfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->nfcLocked:Z

    if-ne v2, v0, :cond_2

    const-string v1, "QuickSettingNfc"

    const-string v2, "toggleNextNFCstate.mdmLocked!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->nfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_3

    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->startColorAnimation()V

    const-string v2, "QuickSettingNfc"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "toggleNFCstate.lock:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc$3;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc$3;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;Z)V

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v2, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->onAttachedToWindow()V

    const v1, 0x7f070027

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    const v2, 0x7f070028

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->setContentView(Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v1, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc$1;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->onLocaleChanged()V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->handler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->removeSelfIfNeed(Landroid/os/Handler;)V

    const-string v1, "QuickSettingNfc"

    const-string v2, "!!!!!initialize set content fail"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->onDetachedFromWindow()V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->receiverRegister:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->receiverRegister:Z

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->stopColorAnimation()V

    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setOnOverlayChangeListener(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onLocaleChanged()V
    .locals 3

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070029

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/util/res/HtcResUtil;->isInAllCapsLocale(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAllCaps(Z)V

    :cond_0
    return-void
.end method
