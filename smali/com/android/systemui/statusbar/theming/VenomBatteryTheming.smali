.class public Lcom/android/systemui/statusbar/theming/VenomBatteryTheming;
.super Ljava/lang/Object;
.source "VenomBatteryTheming.java"


# static fields
.field public static final TWEAK_NAME:Ljava/lang/String; = "tweaks_systemui_theme_battery"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/theming/VenomBatteryTheming;->mContext:Landroid/content/Context;

    const-string v0, "tweaks_systemui_theme_battery"

    iget-object v1, p0, Lcom/android/systemui/statusbar/theming/VenomBatteryTheming;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "tweaks_systemui_theme_battery"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/theming/ThemeSettings;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public setIcon(Landroid/widget/ImageView;I)V
    .locals 10

    const/4 v9, 0x0

    const/4 v3, 0x0

    const-string v6, "tweaks_systemui_theme_battery"

    invoke-static {v6}, Lcom/android/systemui/statusbar/theming/ThemeSettings;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    :try_start_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/theming/VenomBatteryTheming;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "venom.systemui.theme."

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    const/4 v4, 0x0

    const v6, 0x7f0202c8

    if-ne p2, v6, :cond_2

    const-string v6, "battery"

    const-string v7, "drawable"

    invoke-virtual {v3, v6, v7, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    :cond_0
    :goto_0
    if-eqz v4, :cond_3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v6, p0, Lcom/android/systemui/statusbar/theming/VenomBatteryTheming;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "tweaks_tint_battery"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const v6, 0x7f0202da

    if-ne p2, v6, :cond_0

    const-string v6, "battery_charge"

    const-string v7, "drawable"

    invoke-virtual {v3, v6, v7, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    goto :goto_0

    :catch_0
    move-exception v6

    :cond_3
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v6, p0, Lcom/android/systemui/statusbar/theming/VenomBatteryTheming;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "tweaks_tint_battery"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_1
.end method
