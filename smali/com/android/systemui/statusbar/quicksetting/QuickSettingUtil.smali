.class public Lcom/android/systemui/statusbar/quicksetting/QuickSettingUtil;
.super Ljava/lang/Object;
.source "QuickSettingUtil.java"


# static fields
.field private static final DEBUG:Z

.field public static final QS_DEFAULT_SIMPLE:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUtil;->DEBUG:Z

    .line 25
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUtil;->QS_DEFAULT_SIMPLE:[I

    return-void

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addQSItem(Lcom/android/systemui/statusbar/phone/QuickSettings;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;I)Ljava/lang/String;
    .locals 11
    .parameter "qsInstance"
    .parameter "inflater"
    .parameter "container"
    .parameter "index"

    .prologue
    const/4 v10, 0x0

    .line 65
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-gez p3, :cond_1

    .line 66
    :cond_0
    const-string v9, "invalid"

    .line 186
    :goto_0
    return-object v9

    .line 68
    :cond_1
    packed-switch p3, :pswitch_data_0

    .line 186
    const-string v9, "unknown"

    goto :goto_0

    .line 72
    :pswitch_0
    const v9, 0x7f040012

    invoke-virtual {p1, v9, p2, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    invoke-virtual {p2, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 73
    const-string v9, "airplane "

    goto :goto_0

    .line 77
    :pswitch_1
    const v9, 0x7f040025

    invoke-virtual {p1, v9, p2, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 79
    .local v0, bluetoothTile:Landroid/view/View;
    if-eqz v0, :cond_2

    .line 81
    invoke-virtual {v0, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 82
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 84
    :cond_2
    const-string v9, "bluetooth "

    goto :goto_0

    .line 88
    .end local v0           #bluetoothTile:Landroid/view/View;
    :pswitch_2
    const v9, 0x7f04002c

    invoke-virtual {p1, v9, p2, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    .line 90
    .local v8, wifiTile:Landroid/view/View;
    if-eqz v8, :cond_3

    .line 92
    invoke-virtual {p2, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 93
    invoke-virtual {v8, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 95
    :cond_3
    const-string v9, "wifi "

    goto :goto_0

    .line 99
    .end local v8           #wifiTile:Landroid/view/View;
    :pswitch_3
    const v9, 0x7f040035

    invoke-virtual {p1, v9, p2, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 101
    .local v3, mobileTile:Landroid/view/View;
    if-eqz v3, :cond_4

    .line 103
    invoke-virtual {v3, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 104
    invoke-virtual {p2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 106
    :cond_4
    const-string v9, "mobile_data "

    goto :goto_0

    .line 110
    .end local v3           #mobileTile:Landroid/view/View;
    :pswitch_4
    const v9, 0x7f040028

    invoke-virtual {p1, v9, p2, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 112
    .local v1, brightnessTile:Landroid/view/View;
    if-eqz v1, :cond_5

    .line 114
    invoke-virtual {v1, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 115
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 117
    :cond_5
    const-string v9, "brightness "

    goto :goto_0

    .line 121
    .end local v1           #brightnessTile:Landroid/view/View;
    :pswitch_5
    const v9, 0x7f04001f

    invoke-virtual {p1, v9, p2, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 123
    .local v2, fontTile:Landroid/view/View;
    if-eqz v2, :cond_6

    .line 125
    invoke-virtual {v2, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 126
    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 128
    :cond_6
    const-string v9, "font "

    goto :goto_0

    .line 132
    .end local v2           #fontTile:Landroid/view/View;
    :pswitch_6
    const v9, 0x7f04005a

    invoke-virtual {p1, v9, p2, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 134
    .local v7, usageTile:Landroid/view/View;
    if-eqz v7, :cond_7

    .line 136
    invoke-virtual {v7, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 137
    invoke-virtual {p2, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 139
    :cond_7
    const-string v9, "data_usage "

    goto :goto_0

    .line 143
    .end local v7           #usageTile:Landroid/view/View;
    :pswitch_7
    const v9, 0x7f040052

    invoke-virtual {p1, v9, p2, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    invoke-virtual {p2, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 144
    const-string v9, "sound_profile "

    goto/16 :goto_0

    .line 148
    :pswitch_8
    const v9, 0x7f040043

    invoke-virtual {p1, v9, p2, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 150
    .local v4, ringtoneTile:Landroid/view/View;
    if-eqz v4, :cond_8

    .line 152
    invoke-virtual {v4, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 153
    invoke-virtual {p2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 155
    :cond_8
    const-string v9, "ringtone "

    goto/16 :goto_0

    .line 159
    .end local v4           #ringtoneTile:Landroid/view/View;
    :pswitch_9
    const v9, 0x7f04005d

    invoke-virtual {p1, v9, p2, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    invoke-virtual {p2, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 160
    const-string v9, "volume "

    goto/16 :goto_0

    .line 164
    :pswitch_a
    const v9, 0x7f04004a

    invoke-virtual {p1, v9, p2, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRotate;

    .line 167
    .local v5, rotateTile:Lcom/android/systemui/statusbar/quicksetting/QuickSettingRotate;
    if-eqz v5, :cond_9

    .line 169
    invoke-virtual {p2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 170
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->getQuickSettingsModel()Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRotate;->setQuickSettingModel(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)V

    .line 172
    :cond_9
    const-string v9, "rotation "

    goto/16 :goto_0

    .line 176
    .end local v5           #rotateTile:Lcom/android/systemui/statusbar/quicksetting/QuickSettingRotate;
    :pswitch_b
    const v9, 0x7f040022

    invoke-virtual {p1, v9, p2, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 178
    .local v6, switchTile:Landroid/view/View;
    if-eqz v6, :cond_a

    .line 180
    invoke-virtual {v6, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 181
    invoke-virtual {p2, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 183
    :cond_a
    const-string v9, "home_switch "

    goto/16 :goto_0

    .line 68
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public static generateContent(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/phone/QuickSettings;)V
    .locals 12
    .parameter "context"
    .parameter "container"
    .parameter "qsInstance"

    .prologue
    .line 30
    sget-object v3, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUtil;->QS_DEFAULT_SIMPLE:[I

    .line 32
    .local v3, qs_acc:[I
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 60
    :cond_0
    :goto_0
    return-void

    .line 35
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 37
    .local v6, start:J
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 40
    .local v1, inflater:Landroid/view/LayoutInflater;
    invoke-static {}, Lcom/android/systemui/CustomizationUtil;->getReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v4

    .line 42
    .local v4, reader:Lcom/htc/customization/HtcCustomizationReader;
    if-nez v4, :cond_4

    .line 43
    sget-object v3, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUtil;->QS_DEFAULT_SIMPLE:[I

    .line 48
    :goto_1
    if-eqz v3, :cond_2

    array-length v8, v3

    if-nez v8, :cond_3

    .line 49
    :cond_2
    sget-object v3, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUtil;->QS_DEFAULT_SIMPLE:[I

    .line 51
    :cond_3
    const-string v0, ""

    .line 54
    .local v0, content_info:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, loop:I
    array-length v5, v3

    .local v5, size:I
    :goto_2
    if-ge v2, v5, :cond_5

    .line 55
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget v9, v3, v2

    invoke-static {p2, v1, p1, v9}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUtil;->addQSItem(Lcom/android/systemui/statusbar/phone/QuickSettings;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 54
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 45
    .end local v0           #content_info:Ljava/lang/String;
    .end local v2           #loop:I
    .end local v5           #size:I
    :cond_4
    const-string v8, "quick_setting_items_simple"

    sget-object v9, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUtil;->QS_DEFAULT_SIMPLE:[I

    invoke-interface {v4, v8, v9}, Lcom/htc/customization/HtcCustomizationReader;->readIntArray(Ljava/lang/String;[I)[I

    move-result-object v3

    goto :goto_1

    .line 57
    .restart local v0       #content_info:Ljava/lang/String;
    .restart local v2       #loop:I
    .restart local v5       #size:I
    :cond_5
    const-string v8, "QuickSettingUtil"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "generateContent:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v6

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\ncontent_acc:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\ncontent_info:["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
