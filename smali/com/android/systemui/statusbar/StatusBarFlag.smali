.class public Lcom/android/systemui/statusbar/StatusBarFlag;
.super Ljava/lang/Object;
.source "StatusBarFlag.java"


# static fields
.field public static ASIA_ROGERS_TELUS_PROJECTS:Z

.field public static CMCC_PROJECT:Z

.field public static CT_PROJECT:Z

.field public static CU_PROJECT:Z

.field public static DUAL_SIM_PHONE:Z

.field public static HK_PROJECT:Z

.field public static HTC_ATT_ONS:Z

.field public static HTC_CHINA_SKU:Z

.field public static HTC_RECENT_APP:Z

.field public static HTC_WIFI_OFFLOAD:Z

.field public static HTC_WIFI_ONLY:Z

.field public static MMR_PROJECT:Z

.field public static REGION:I

.field public static ROAMING_PREFERRED_SLOT:Z

.field public static SHOW_4G_FOR_LTE:Z

.field public static SKU_ID:I

.field public static SUPPORT_LTE:Z

.field public static SUPPORT_MINOR_QS:Z

.field public static supportHWNav:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x1

    invoke-static {}, Lcom/android/systemui/statusbar/StatusBarFlag;->loadSkuID()I

    move-result v1

    sput v1, Lcom/android/systemui/statusbar/StatusBarFlag;->SKU_ID:I

    invoke-static {}, Lcom/android/systemui/statusbar/StatusBarFlag;->loadRegion()I

    move-result v1

    sput v1, Lcom/android/systemui/statusbar/StatusBarFlag;->REGION:I

    invoke-static {}, Lcom/android/systemui/statusbar/StatusBarFlag;->isHtcStyleRecentApp()Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_RECENT_APP:Z

    invoke-static {}, Lcom/android/systemui/statusbar/StatusBarFlag;->loadMinorQuickSetting()Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/statusbar/StatusBarFlag;->SUPPORT_MINOR_QS:Z

    invoke-static {}, Lcom/android/systemui/statusbar/StatusBarFlag;->loadSupportLte()Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/statusbar/StatusBarFlag;->SUPPORT_LTE:Z

    invoke-static {}, Lcom/android/systemui/statusbar/StatusBarFlag;->show4gForLte()Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/statusbar/StatusBarFlag;->SHOW_4G_FOR_LTE:Z

    sget v1, Lcom/android/systemui/statusbar/StatusBarFlag;->SKU_ID:I

    const/4 v4, 0x7

    if-ne v1, v4, :cond_0

    move v1, v2

    :goto_0
    sput-boolean v1, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_ATT_ONS:Z

    const-string v1, "wifi_only"

    invoke-static {v1, v3}, Lcom/htc/customization/HtcCustomizationSystemReaderImpl;->readBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_WIFI_ONLY:Z

    invoke-static {}, Landroid/telephony/TelephonyManager;->dualPhoneEnable()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Landroid/telephony/TelephonyManager;->dualGSMPhoneEnable()Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v3

    :goto_1
    sput-boolean v1, Lcom/android/systemui/statusbar/StatusBarFlag;->DUAL_SIM_PHONE:Z

    const-string v1, "persist.wifi.offload"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_2

    move v1, v2

    :goto_2
    sput-boolean v1, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_WIFI_OFFLOAD:Z

    sget v1, Lcom/android/systemui/statusbar/StatusBarFlag;->REGION:I

    const/4 v4, 0x3

    if-eq v1, v4, :cond_3

    sget v1, Lcom/android/systemui/statusbar/StatusBarFlag;->SKU_ID:I

    const/16 v4, 0x4b

    if-eq v1, v4, :cond_3

    move v1, v2

    :goto_3
    sput-boolean v1, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_CHINA_SKU:Z

    sget v1, Lcom/android/systemui/statusbar/StatusBarFlag;->REGION:I

    const/4 v4, 0x5

    if-eq v1, v4, :cond_4

    sget v1, Lcom/android/systemui/statusbar/StatusBarFlag;->SKU_ID:I

    const/16 v4, 0x9

    if-eq v1, v4, :cond_4

    sget v1, Lcom/android/systemui/statusbar/StatusBarFlag;->SKU_ID:I

    const/16 v4, 0x26

    if-eq v1, v4, :cond_4

    move v1, v2

    :goto_4
    sput-boolean v1, Lcom/android/systemui/statusbar/StatusBarFlag;->ASIA_ROGERS_TELUS_PROJECTS:Z

    sget v1, Lcom/android/systemui/statusbar/StatusBarFlag;->REGION:I

    const/16 v4, 0xa

    if-ne v1, v4, :cond_5

    move v1, v2

    :goto_5
    sput-boolean v1, Lcom/android/systemui/statusbar/StatusBarFlag;->MMR_PROJECT:Z

    sget v1, Lcom/android/systemui/statusbar/StatusBarFlag;->SKU_ID:I

    const/16 v4, 0x46

    if-ne v1, v4, :cond_6

    move v1, v2

    :goto_6
    sput-boolean v1, Lcom/android/systemui/statusbar/StatusBarFlag;->HK_PROJECT:Z

    sget v1, Lcom/android/systemui/statusbar/StatusBarFlag;->SKU_ID:I

    const/16 v4, 0x1a

    if-ne v1, v4, :cond_7

    move v1, v2

    :goto_7
    sput-boolean v1, Lcom/android/systemui/statusbar/StatusBarFlag;->CMCC_PROJECT:Z

    sget v1, Lcom/android/systemui/statusbar/StatusBarFlag;->SKU_ID:I

    const/16 v4, 0x1d

    if-ne v1, v4, :cond_8

    move v1, v2

    :goto_8
    sput-boolean v1, Lcom/android/systemui/statusbar/StatusBarFlag;->CU_PROJECT:Z

    sget v1, Lcom/android/systemui/statusbar/StatusBarFlag;->SKU_ID:I

    const/16 v4, 0x1b

    if-eq v1, v4, :cond_9

    :goto_9
    sput-boolean v2, Lcom/android/systemui/statusbar/StatusBarFlag;->CT_PROJECT:Z

    invoke-static {}, Lcom/android/systemui/statusbar/StatusBarFlag;->isSupportRoamingPreferredSlot()Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/statusbar/StatusBarFlag;->ROAMING_PREFERRED_SLOT:Z

    return-void

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    move v1, v3

    goto :goto_2

    :cond_3
    move v1, v3

    goto :goto_3

    :cond_4
    move v1, v3

    goto :goto_4

    :cond_5
    move v1, v3

    goto :goto_5

    :cond_6
    move v1, v3

    goto :goto_6

    :cond_7
    move v1, v3

    goto :goto_7

    :cond_8
    move v1, v3

    goto :goto_8

    :cond_9
    move v2, v3

    goto :goto_9
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isHtcStyleRecentApp()Z
    .locals 3

    const/4 v1, 0x1

    invoke-static {}, Lcom/android/systemui/CustomizationUtil;->getReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "support_HtcStyleRecentApp"

    invoke-interface {v0, v2, v1}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const/4 v1, 0x0

    :cond_1
    return v1
.end method

.method private static isSupportRoamingPreferredSlot()Z
    .locals 6

    const-string v3, "Phone"

    invoke-static {v3}, Lcom/android/systemui/CustomizationUtil;->getReaderByApp(Ljava/lang/String;)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v2

    const/4 v0, 0x0

    if-eqz v2, :cond_0

    const-string v3, "dualSimDataRoamingPreferredSlot"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    const-string v3, "StatusBarFlag"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "dualSimDataRoamingPreferredSlot:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private static loadMinorQuickSetting()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static loadRegion()I
    .locals 4

    const-string v1, "region"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/htc/customization/HtcCustomizationSystemReaderImpl;->readInteger(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "StatusBarFlag"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "system_acc_region:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private static loadSkuID()I
    .locals 4

    const-string v1, "sku_id"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/htc/customization/HtcCustomizationSystemReaderImpl;->readInteger(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "StatusBarFlag"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "system_sku_id:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private static loadSupportLte()Z
    .locals 6

    invoke-static {}, Lcom/android/systemui/CustomizationUtil;->getReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v2

    const/4 v0, 0x0

    if-eqz v2, :cond_0

    const-string v3, "support_lte"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    const-string v3, "StatusBarFlag"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "support_lte:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private static show4gForLte()Z
    .locals 6

    invoke-static {}, Lcom/android/systemui/CustomizationUtil;->getReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v2

    const/4 v0, 0x0

    if-eqz v2, :cond_0

    const-string v3, "show_4g_for_lte"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    const-string v3, "StatusBarFlag"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "show_4g_for_lte:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method
