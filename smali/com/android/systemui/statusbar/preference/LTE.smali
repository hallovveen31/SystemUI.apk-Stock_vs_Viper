.class public Lcom/android/systemui/statusbar/preference/LTE;
.super Lcom/android/systemui/statusbar/preference/StatusBarPreference;
.source "LTE.java"


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

    const-string v0, "Venom - VEQS LTE"

    sput-object v0, Lcom/android/systemui/statusbar/preference/LTE;->Tag:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/preference/StatusBarPreference;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/preference/LTE;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/systemui/statusbar/preference/LTE$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/preference/LTE$1;-><init>(Lcom/android/systemui/statusbar/preference/LTE;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/LTE;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/systemui/statusbar/preference/LTE$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/preference/LTE$2;-><init>(Lcom/android/systemui/statusbar/preference/LTE;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/LTE;->mClickListener:Landroid/view/View$OnClickListener;

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/LTE;->mCheckBox:Lcom/htc/widget/HtcToggleButtonLight;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcToggleButtonLight;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/preference/LTE;->init()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/preference/LTE;->updateResources()V

    return-void
.end method

.method static synthetic access$0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/preference/LTE;->Tag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/android/systemui/statusbar/preference/LTE;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/preference/LTE;->setState(Z)V

    return-void
.end method

.method static synthetic access$2(Lcom/android/systemui/statusbar/preference/LTE;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/preference/LTE;->setPreferedNetworkMode(I)V

    return-void
.end method

.method private getModeValue(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x9

    if-ne p1, v0, :cond_0

    const-string v0, "LTE Auto"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "WCDMA Preferred"

    goto :goto_0
.end method

.method private setPreferedNetworkMode(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/preference/LTE;->getCurrentState()Z

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/preference/LTE;->setEnabled(Z)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.internal.telephony.MODIFY_NETWORK_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "networkMode"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/LTE;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private setState(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/LTE;->mCheckBox:Lcom/htc/widget/HtcToggleButtonLight;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcToggleButtonLight;->setChecked(Z)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mSummary:Landroid/widget/TextView;

    const v1, 0x7f0a0153

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mSummary:Landroid/widget/TextView;

    const v1, 0x7f0a0154

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method


# virtual methods
.method protected getCurrentState()Z
    .locals 5

    const/16 v4, 0x9

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/LTE;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "preferred_network_mode"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sget-object v1, Lcom/android/systemui/statusbar/preference/LTE;->Tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getCurrentState: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/preference/LTE;->getModeValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v0, v4, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public init()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/LTE;->mIcon:Landroid/widget/ImageView;

    const v1, 0x7f020533

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/preference/LTE;->getThemeResource(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/LTE;->mIntentFilter:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/LTE;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.android.internal.telephony.NETWORK_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/LTE;->mContentView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/LTE;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onStart()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/LTE;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/LTE;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/LTE;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/preference/LTE;->updateResources()V

    return-void
.end method

.method public onStop()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/LTE;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/LTE;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public updateResources()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->updateResources()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/LTE;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f0a016a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method
