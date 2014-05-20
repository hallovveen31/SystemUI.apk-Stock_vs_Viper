.class public Lcom/android/systemui/CustomizationUtil;
.super Ljava/lang/Object;
.source "CustomizationUtil.java"


# static fields
.field public static TAG:Ljava/lang/String;

.field private static mCustManager:Lcom/htc/customization/HtcCustomizationManager;

.field private static mCustReader:Lcom/htc/customization/HtcCustomizationReader;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const-string v0, "CustomizationUtil"

    sput-object v0, Lcom/android/systemui/CustomizationUtil;->TAG:Ljava/lang/String;

    sput-object v1, Lcom/android/systemui/CustomizationUtil;->mCustReader:Lcom/htc/customization/HtcCustomizationReader;

    sput-object v1, Lcom/android/systemui/CustomizationUtil;->mCustManager:Lcom/htc/customization/HtcCustomizationManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs checkSkuId([I)Z
    .locals 6

    sget v4, Lcom/android/systemui/statusbar/StatusBarFlag;->SKU_ID:I

    move-object v0, p0

    array-length v3, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget v2, v0, v1

    if-ne v4, v2, :cond_0

    const/4 v5, 0x1

    :goto_1
    return v5

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public static getReader()Lcom/htc/customization/HtcCustomizationReader;
    .locals 5

    sget-object v1, Lcom/android/systemui/CustomizationUtil;->mCustReader:Lcom/htc/customization/HtcCustomizationReader;

    if-nez v1, :cond_0

    :try_start_0
    invoke-static {}, Lcom/htc/customization/HtcCustomizationManager;->getInstance()Lcom/htc/customization/HtcCustomizationManager;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/CustomizationUtil;->mCustManager:Lcom/htc/customization/HtcCustomizationManager;

    sget-object v1, Lcom/android/systemui/CustomizationUtil;->mCustManager:Lcom/htc/customization/HtcCustomizationManager;

    const-string v2, "SystemUI"

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/CustomizationUtil;->mCustReader:Lcom/htc/customization/HtcCustomizationReader;

    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/systemui/CustomizationUtil;->mCustReader:Lcom/htc/customization/HtcCustomizationReader;

    instance-of v1, v1, Lcom/htc/customization/AccAppReader;

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/systemui/CustomizationUtil;->TAG:Ljava/lang/String;

    const-string v2, "!!!!!can\'t find systemUI tag"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    sget-object v1, Lcom/android/systemui/CustomizationUtil;->mCustReader:Lcom/htc/customization/HtcCustomizationReader;

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static getReaderByApp(Ljava/lang/String;)Lcom/htc/customization/HtcCustomizationReader;
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/htc/customization/HtcCustomizationManager;->getInstance()Lcom/htc/customization/HtcCustomizationManager;

    move-result-object v2

    sput-object v2, Lcom/android/systemui/CustomizationUtil;->mCustManager:Lcom/htc/customization/HtcCustomizationManager;

    sget-object v2, Lcom/android/systemui/CustomizationUtil;->mCustManager:Lcom/htc/customization/HtcCustomizationManager;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, p0, v3, v4}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v1

    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_0

    instance-of v2, v1, Lcom/htc/customization/AccAppReader;

    if-nez v2, :cond_0

    sget-object v2, Lcom/android/systemui/CustomizationUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "!!!!!can\'t find "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " tag"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
