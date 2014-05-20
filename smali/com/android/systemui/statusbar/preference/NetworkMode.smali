.class public Lcom/android/systemui/statusbar/preference/NetworkMode;
.super Lcom/android/systemui/statusbar/preference/StatusBarPreference;
.source "NetworkMode.java"


# static fields
.field private static final ACTION_MODIFY_NETWORK_MODE:Ljava/lang/String; = "com.android.internal.telephony.MODIFY_NETWORK_MODE"

.field private static final ACTION_NETWORK_MODE_CHANGED:Ljava/lang/String; = "com.android.internal.telephony.NETWORK_MODE_CHANGED"

.field private static final EXTRA_NETWORK_MODE:Ljava/lang/String; = "networkMode"

.field private static Tag:Ljava/lang/String;


# instance fields
.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mContext:Landroid/content/Context;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Venom - VEQS 2G"

    sput-object v0, Lcom/android/systemui/statusbar/preference/NetworkMode;->Tag:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/preference/StatusBarPreference;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/preference/NetworkMode;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/systemui/statusbar/preference/NetworkMode$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/preference/NetworkMode$1;-><init>(Lcom/android/systemui/statusbar/preference/NetworkMode;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/NetworkMode;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/systemui/statusbar/preference/NetworkMode$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/preference/NetworkMode$2;-><init>(Lcom/android/systemui/statusbar/preference/NetworkMode;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/NetworkMode;->mClickListener:Landroid/view/View$OnClickListener;

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/NetworkMode;->mCheckBox:Lcom/htc/widget/HtcToggleButtonLight;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcToggleButtonLight;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/preference/NetworkMode;->init()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/preference/NetworkMode;->updateResources()V

    return-void
.end method

.method static synthetic access$0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/preference/NetworkMode;->Tag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/android/systemui/statusbar/preference/NetworkMode;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/preference/NetworkMode;->refreshSummary()V

    return-void
.end method

.method static synthetic access$2(Lcom/android/systemui/statusbar/preference/NetworkMode;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/preference/NetworkMode;->setPreferedNetworkMode(I)V

    return-void
.end method

.method private getModeValue(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string v0, "GSM Only"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "WCDMA Preferred"

    goto :goto_0
.end method

.method private refreshSummary()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/NetworkMode;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "preferred_network_mode"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    if-ne v1, v4, :cond_0

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/preference/NetworkMode;->setSummary(I)V

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/preference/NetworkMode;->setSummary(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/preference/NetworkMode;->setSummary(I)V

    goto :goto_0
.end method

.method private setPreferedNetworkMode(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/preference/NetworkMode;->getCurrentState()Z

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/preference/NetworkMode;->setSummary(I)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/preference/NetworkMode;->setEnabled(Z)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.internal.telephony.MODIFY_NETWORK_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "networkMode"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/NetworkMode;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private setSummary(I)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    sget-object v0, Lcom/android/systemui/statusbar/preference/NetworkMode;->Tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setSummary: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/preference/NetworkMode;->setEnabled(Z)V

    packed-switch p1, :pswitch_data_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/NetworkMode;->mCheckBox:Lcom/htc/widget/HtcToggleButtonLight;

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcToggleButtonLight;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/NetworkMode;->mSummary:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/NetworkMode;->mCheckBox:Lcom/htc/widget/HtcToggleButtonLight;

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcToggleButtonLight;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/NetworkMode;->mSummary:Landroid/widget/TextView;

    const v1, 0x7f0a0164

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/NetworkMode;->mCheckBox:Lcom/htc/widget/HtcToggleButtonLight;

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcToggleButtonLight;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/NetworkMode;->mSummary:Landroid/widget/TextView;

    const v1, 0x7f0a0165

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected getCurrentState()Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/NetworkMode;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preferred_network_mode"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sget-object v3, Lcom/android/systemui/statusbar/preference/NetworkMode;->Tag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getCurrentState: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/preference/NetworkMode;->getModeValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public init()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/NetworkMode;->mIcon:Landroid/widget/ImageView;

    const v1, 0x7f020537

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/preference/NetworkMode;->getThemeResource(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/NetworkMode;->mIntentFilter:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/NetworkMode;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.android.internal.telephony.NETWORK_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/NetworkMode;->mContentView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/NetworkMode;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onStart()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/NetworkMode;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/NetworkMode;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/NetworkMode;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/preference/NetworkMode;->refreshSummary()V

    return-void
.end method

.method public onStop()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/NetworkMode;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/NetworkMode;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public updateResources()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->updateResources()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/NetworkMode;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f0a014a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/preference/NetworkMode;->refreshSummary()V

    return-void
.end method
