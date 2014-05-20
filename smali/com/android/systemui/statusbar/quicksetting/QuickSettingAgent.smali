.class public Lcom/android/systemui/statusbar/quicksetting/QuickSettingAgent;
.super Landroid/app/backup/BackupAgent;
.source "QuickSettingAgent.java"


# static fields
.field private static qs_available:[I


# instance fields
.field private qs_invisible:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private qs_visible:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAgent;->qs_available:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 18
    invoke-direct {p0}, Landroid/app/backup/BackupAgent;-><init>()V

    .line 144
    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAgent;->qs_visible:Ljava/util/ArrayList;

    .line 145
    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAgent;->qs_invisible:Ljava/util/ArrayList;

    return-void
.end method

.method private handleInvisibleList(Ljava/lang/String;)V
    .locals 7
    .parameter "invisible_item"

    .prologue
    .line 167
    if-nez p1, :cond_0

    .line 189
    :goto_0
    return-void

    .line 171
    :cond_0
    const-string v3, "QuickSettingAgent"

    sget-object v4, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAgent;->qs_available:[I

    invoke-static {v3, p1, v4}, Lcom/android/systemui/statusbar/phone/QuickSettings;->getConvertList(Ljava/lang/String;Ljava/lang/String;[I)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAgent;->qs_invisible:Ljava/util/ArrayList;

    .line 175
    const/4 v1, 0x0

    .local v1, loop:I
    sget-object v3, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAgent;->qs_available:[I

    array-length v2, v3

    .local v2, size:I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 177
    sget-object v3, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAgent;->qs_available:[I

    aget v0, v3, v1

    .line 179
    .local v0, item_index:I
    iget-object v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAgent;->qs_visible:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAgent;->qs_invisible:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 180
    iget-object v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAgent;->qs_invisible:Ljava/util/ArrayList;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 184
    .end local v0           #item_index:I
    :cond_2
    const-string v3, "QuickSettingAgent"

    const-string v4, "qs_invisible(save)"

    const-string v5, "quick_setting_items_order_invisible"

    iget-object v6, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAgent;->qs_invisible:Ljava/util/ArrayList;

    invoke-static {p0, v3, v4, v5, v6}, Lcom/android/systemui/statusbar/phone/QuickSettings;->putSettingRecord(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 187
    const-string v3, "QuickSettingAgent"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "qs_invisible(convert):"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAgent;->qs_invisible:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    const-string v3, "QuickSettingAgent"

    const-string v4, "--------------------------------------------------------------------------------"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleVisibleList(Ljava/lang/String;)V
    .locals 4
    .parameter "visible_item"

    .prologue
    .line 151
    if-nez p1, :cond_0

    .line 163
    :goto_0
    return-void

    .line 156
    :cond_0
    const-string v0, "QuickSettingAgent"

    sget-object v1, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAgent;->qs_available:[I

    invoke-static {v0, p1, v1}, Lcom/android/systemui/statusbar/phone/QuickSettings;->getConvertList(Ljava/lang/String;Ljava/lang/String;[I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAgent;->qs_visible:Ljava/util/ArrayList;

    .line 159
    const-string v0, "QuickSettingAgent"

    const-string v1, "qs_visible(save)"

    const-string v2, "quick_setting_items_order"

    iget-object v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAgent;->qs_visible:Ljava/util/ArrayList;

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettings;->putSettingRecord(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 161
    const-string v0, "QuickSettingAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "qs_visible(convert):"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAgent;->qs_visible:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const-string v0, "QuickSettingAgent"

    const-string v1, "--------------------------------------------------------------------------------"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .locals 7
    .parameter "oldstate"
    .parameter "data"
    .parameter "newstate"

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAgent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "quick_setting_items_order"

    invoke-static {v4, v5}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 35
    .local v3, visible_item:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 37
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 41
    .local v2, string_bytes:[B
    :try_start_0
    const-string v4, "visible_item_key"

    array-length v5, v2

    invoke-virtual {p2, v4, v5}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    .line 42
    array-length v4, v2

    invoke-virtual {p2, v2, v4}, Landroid/app/backup/BackupDataOutput;->writeEntityData([BI)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .end local v2           #string_bytes:[B
    :cond_0
    :goto_0
    const-string v4, "QuickSettingAgent"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "backup(visible):"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAgent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "quick_setting_items_order_invisible"

    invoke-static {v4, v5}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 57
    .local v1, invisible_item:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 59
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 63
    .restart local v2       #string_bytes:[B
    :try_start_1
    const-string v4, "invisible_item_key"

    array-length v5, v2

    invoke-virtual {p2, v4, v5}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    .line 64
    array-length v4, v2

    invoke-virtual {p2, v2, v4}, Landroid/app/backup/BackupDataOutput;->writeEntityData([BI)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 73
    .end local v2           #string_bytes:[B
    :cond_1
    :goto_1
    const-string v4, "QuickSettingAgent"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "backup(invisible):"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    return-void

    .line 44
    .end local v1           #invisible_item:Ljava/lang/String;
    .restart local v2       #string_bytes:[B
    :catch_0
    move-exception v0

    .line 46
    .local v0, exception:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 47
    const-string v4, "QuickSettingAgent"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "!!!!!backup error for visible item:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 66
    .end local v0           #exception:Ljava/lang/Exception;
    .restart local v1       #invisible_item:Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 68
    .restart local v0       #exception:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 69
    const-string v4, "QuickSettingAgent"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "!!!!!backup error for invisible item:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V
    .locals 11
    .parameter "data"
    .parameter "version"
    .parameter "state"

    .prologue
    .line 80
    if-nez p1, :cond_0

    .line 140
    :goto_0
    return-void

    .line 83
    :cond_0
    const/4 v6, 0x0

    .line 84
    .local v6, visible_item:Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, invisible_item:Ljava/lang/String;
    move-object v4, v3

    .end local v3           #invisible_item:Ljava/lang/String;
    .local v4, invisible_item:Ljava/lang/String;
    move-object v7, v6

    .line 89
    .end local v6           #visible_item:Ljava/lang/String;
    .local v7, visible_item:Ljava/lang/String;
    :goto_1
    :try_start_0
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->readNextHeader()Z

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    .line 91
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 93
    .local v5, key:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->getDataSize()I

    move-result v1

    .line 96
    .local v1, data_size:I
    const-string v8, "visible_item_key"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1

    .line 99
    new-array v0, v1, [B

    .line 100
    .local v0, buffer:[B
    const/4 v8, 0x0

    invoke-virtual {p1, v0, v8, v1}, Landroid/app/backup/BackupDataInput;->readEntityData([BII)I

    .line 102
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>([B)V

    .end local v7           #visible_item:Ljava/lang/String;
    .restart local v6       #visible_item:Ljava/lang/String;
    move-object v3, v4

    .end local v0           #buffer:[B
    .end local v4           #invisible_item:Ljava/lang/String;
    .restart local v3       #invisible_item:Ljava/lang/String;
    :goto_2
    move-object v4, v3

    .end local v3           #invisible_item:Ljava/lang/String;
    .restart local v4       #invisible_item:Ljava/lang/String;
    move-object v7, v6

    .line 112
    .end local v6           #visible_item:Ljava/lang/String;
    .restart local v7       #visible_item:Ljava/lang/String;
    goto :goto_1

    .line 105
    :cond_1
    const-string v8, "invisible_item_key"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_4

    .line 107
    new-array v0, v1, [B

    .line 108
    .restart local v0       #buffer:[B
    const/4 v8, 0x0

    invoke-virtual {p1, v0, v8, v1}, Landroid/app/backup/BackupDataInput;->readEntityData([BII)I

    .line 110
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v4           #invisible_item:Ljava/lang/String;
    .restart local v3       #invisible_item:Ljava/lang/String;
    move-object v6, v7

    .end local v7           #visible_item:Ljava/lang/String;
    .restart local v6       #visible_item:Ljava/lang/String;
    goto :goto_2

    .line 114
    .end local v0           #buffer:[B
    .end local v1           #data_size:I
    .end local v3           #invisible_item:Ljava/lang/String;
    .end local v5           #key:Ljava/lang/String;
    .end local v6           #visible_item:Ljava/lang/String;
    .restart local v4       #invisible_item:Ljava/lang/String;
    .restart local v7       #visible_item:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 116
    .local v2, exception:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 117
    const-string v8, "QuickSettingAgent"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "!!!!!restore item fail:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    .end local v2           #exception:Ljava/lang/Exception;
    :cond_2
    const-string v8, "QuickSettingAgent"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "restore(visible):"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\nrestore(invisible):"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const-string v8, "QuickSettingAgent"

    const-string v9, "--------------------------------------------------------------------------------"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    sget-object v8, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAgent;->qs_available:[I

    if-nez v8, :cond_3

    .line 126
    invoke-static {}, Lcom/android/systemui/statusbar/phone/QuickSettings;->getQSAvailableList()[I

    move-result-object v8

    sput-object v8, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAgent;->qs_available:[I

    .line 128
    const-string v8, "QuickSettingAgent"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "refreshQSavailable:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAgent;->qs_available:[I

    invoke-static {v10}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const-string v8, "QuickSettingAgent"

    const-string v9, "--------------------------------------------------------------------------------"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_3
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAgent;->qs_visible:Ljava/util/ArrayList;

    .line 133
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAgent;->qs_invisible:Ljava/util/ArrayList;

    .line 135
    invoke-direct {p0, v7}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAgent;->handleVisibleList(Ljava/lang/String;)V

    .line 136
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAgent;->handleInvisibleList(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAgent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "quick_setting_items_refresh"

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .restart local v1       #data_size:I
    .restart local v5       #key:Ljava/lang/String;
    :cond_4
    move-object v3, v4

    .end local v4           #invisible_item:Ljava/lang/String;
    .restart local v3       #invisible_item:Ljava/lang/String;
    move-object v6, v7

    .end local v7           #visible_item:Ljava/lang/String;
    .restart local v6       #visible_item:Ljava/lang/String;
    goto/16 :goto_2
.end method
