.class public Lcom/android/systemui/statusbar/policy/HIconTheme;
.super Ljava/lang/Object;
.source "HIconTheme.java"


# static fields
.field public static HIcon:I = 0x0

.field private static final ICON_3G:I = 0x4

.field private static final ICON_3GPlus:I = 0x5

.field private static final ICON_4G:I = 0x1

.field private static final ICON_4G_LTE:I = 0x2

.field private static final ICON_H:I = 0x0

.field private static final ICON_HPlus:I = 0x6

.field private static final ICON_LTE:I = 0x3

.field public static final TWEAK_NAME:Ljava/lang/String; = "tweaks_statusbar_h_icon"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/android/systemui/statusbar/policy/HIconTheme;->HIcon:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "tweaks_statusbar_h_icon"

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "tweaks_statusbar_h_icon"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/theming/ThemeSettings;->putInt(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public getIcons()[I
    .locals 1

    const-string v0, "tweaks_statusbar_h_icon"

    invoke-static {v0}, Lcom/android/systemui/statusbar/theming/ThemeSettings;->getInt(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/android/systemui/statusbar/policy/HtcTelephonyIcons;->HTC_DATA_H:[I

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/android/systemui/statusbar/policy/HtcTelephonyIcons;->HTC_DATA_H:[I

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/android/systemui/statusbar/policy/HtcTelephonyIcons;->HTC_DATA_4G:[I

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/android/systemui/statusbar/policy/HtcTelephonyIcons;->HTC_DATA_4G:[I

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/android/systemui/statusbar/policy/HtcTelephonyIcons;->HTC_DATA_LTE:[I

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/android/systemui/statusbar/policy/HtcTelephonyIcons;->HTC_DATA_3G:[I

    goto :goto_0

    :pswitch_5
    sget-object v0, Lcom/android/systemui/statusbar/policy/HtcTelephonyIcons;->HTC_DATA_3GPLUS:[I

    goto :goto_0

    :pswitch_6
    sget-object v0, Lcom/android/systemui/statusbar/policy/HtcTelephonyIcons;->HTC_DATA_HPLUS:[I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
