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
    .parameter "context"
    .parameter "attrset"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->handler:Landroid/os/Handler;

    .line 122
    iput-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->indicatorview:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    .line 123
    iput-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    .line 125
    iput-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->nfcAdapter:Landroid/nfc/NfcAdapter;

    .line 177
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->nfcEnable:Z

    .line 178
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->nfcLocked:Z

    .line 181
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->receiverRegister:Z

    .line 183
    new-instance v0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc$2;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->receiver:Landroid/content/BroadcastReceiver;

    .line 36
    const-string v0, "nfc"

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->tileLabel:Ljava/lang/String;

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->toggleNextNFCstate()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;)Landroid/nfc/NfcAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->nfcAdapter:Landroid/nfc/NfcAdapter;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;Landroid/nfc/NfcAdapter;)Landroid/nfc/NfcAdapter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->nfcAdapter:Landroid/nfc/NfcAdapter;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;)Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->indicatorview:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;)Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->nfcEnable:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->nfcEnable:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->nfcLocked:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->nfcLocked:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->setNfcItemEnable(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->stateToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getQSIconID()I
    .locals 1

    .prologue
    .line 117
    const v0, 0x7f020134

    return v0
.end method

.method public static getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 1
    .parameter "resource"

    .prologue
    .line 112
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
    .parameter "_imageview"
    .parameter "_indicatorview"

    .prologue
    const/4 v4, 0x1

    const/high16 v7, 0x3f00

    const/4 v5, 0x0

    .line 129
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 131
    .local v2, startTime:J
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move v4, v5

    .line 174
    :goto_0
    return v4

    .line 134
    :cond_1
    iput-object p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    .line 135
    iput-object p2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->indicatorview:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    .line 137
    iget-object v6, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->nfcAdapter:Landroid/nfc/NfcAdapter;

    .line 141
    iget-object v6, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->nfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v6, :cond_3

    .line 143
    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->setNfcItemEnable(Z)V

    .line 144
    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->setEnabled(Z)V

    .line 145
    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->setAlpha(F)V

    .line 164
    :goto_1
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->receiverRegister:Z

    if-nez v5, :cond_2

    .line 166
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->receiverRegister:Z

    .line 167
    iget-object v5, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v7, Landroid/content/IntentFilter;

    const-string v8, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 170
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v0, v5, v2

    .line 172
    .local v0, elapse:J
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

    .line 149
    .end local v0           #elapse:J
    :cond_3
    iget-object v6, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->nfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v6}, Landroid/nfc/NfcAdapter;->isNfcLocked()Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->nfcLocked:Z

    .line 150
    iget-object v6, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->nfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v6}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->nfcEnable:Z

    .line 153
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->nfcLocked:Z

    if-nez v6, :cond_4

    .line 154
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->nfcEnable:Z

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->setNfcItemEnable(Z)V

    goto :goto_1

    .line 157
    :cond_4
    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->setNfcItemEnable(Z)V

    .line 158
    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->setEnabled(Z)V

    .line 159
    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->setAlpha(F)V

    goto :goto_1
.end method

.method private setNfcItemEnable(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    const/4 v1, 0x1

    .line 246
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->indicatorview:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    if-nez v0, :cond_1

    .line 255
    :cond_0
    :goto_0
    return-void

    .line 249
    :cond_1
    const/high16 v0, 0x3f80

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->setAlpha(F)V

    .line 250
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->setEnabled(Z)V

    .line 252
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->stopColorAnimation()V

    .line 253
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->setOverlayEnable(Z)V

    .line 254
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
    .parameter "state"

    .prologue
    .line 260
    packed-switch p1, :pswitch_data_0

    .line 276
    const-string v0, "STATE_UNKNOWN"

    :goto_0
    return-object v0

    .line 263
    :pswitch_0
    const-string v0, "STATE_ON"

    goto :goto_0

    .line 265
    :pswitch_1
    const-string v0, "STATE_OFF"

    goto :goto_0

    .line 267
    :pswitch_2
    const-string v0, "STATE_TURNING_ON"

    goto :goto_0

    .line 269
    :pswitch_3
    const-string v0, "STATE_TURNING_OFF"

    goto :goto_0

    .line 271
    :pswitch_4
    const-string v0, "STATE_MDM_LOCK"

    goto :goto_0

    .line 273
    :pswitch_5
    const-string v0, "STATE_MDM_UNLOCK"

    goto :goto_0

    .line 260
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

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 284
    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->nfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    if-nez v2, :cond_1

    .line 325
    :cond_0
    :goto_0
    return-void

    .line 288
    :cond_1
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->nfcLocked:Z

    if-ne v2, v0, :cond_2

    .line 290
    const-string v1, "QuickSettingNfc"

    const-string v2, "toggleNextNFCstate.mdmLocked!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 294
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->nfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_3

    .line 297
    .local v0, nextEnable:Z
    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->setEnabled(Z)V

    .line 298
    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->startColorAnimation()V

    .line 300
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

    .line 303
    new-instance v2, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc$3;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc$3;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;Z)V

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc$3;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .end local v0           #nextEnable:Z
    :cond_3
    move v0, v1

    .line 294
    goto :goto_1
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 3

    .prologue
    .line 44
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->onAttachedToWindow()V

    .line 46
    const v1, 0x7f070027

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    const v2, 0x7f070028

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->setContentView(Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;)Z

    move-result v0

    .line 50
    .local v0, success:Z
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 53
    new-instance v1, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc$1;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->onLocaleChanged()V

    .line 76
    :goto_0
    return-void

    .line 72
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->handler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->removeSelfIfNeed(Landroid/os/Handler;)V

    .line 74
    const-string v1, "QuickSettingNfc"

    const-string v2, "!!!!!initialize set content fail"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 81
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->onDetachedFromWindow()V

    .line 83
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->receiverRegister:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 85
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 86
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->receiverRegister:Z

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    if-eqz v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->stopColorAnimation()V

    .line 92
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->setOnOverlayChangeListener(I)V

    .line 93
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    return-void
.end method

.method public onLocaleChanged()V
    .locals 3

    .prologue
    .line 99
    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 101
    .local v0, resource:Landroid/content/res/Resources;
    const v2, 0x7f070029

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 103
    .local v1, textview:Landroid/widget/TextView;
    if-eqz v1, :cond_0

    .line 105
    invoke-static {v0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->getQSItemName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/util/res/HtcResUtil;->isInAllCapsLocale(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 108
    :cond_0
    return-void
.end method
