.class public Lde/gdata/mobilesecurity/intents/ProfileSelector;
.super Lde/gdata/mobilesecurity/intents/GdActivity;
.source "SourceFile"


# instance fields
.field private a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

.field private c:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lde/gdata/mobilesecurity/intents/GdActivity;-><init>()V

    return-void
.end method

.method public static getProfileName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 172
    const-string v0, "getProfileName"

    invoke-static {p0, v0}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->getDatabase(Landroid/content/Context;Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 173
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 175
    sget-object v2, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/Profile$Types;->PRIVATE:Ljava/lang/Integer;

    .line 177
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT type, name FROM profiles WHERE profile = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 179
    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 181
    if-eqz v2, :cond_4

    .line 182
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 183
    const-string v0, "type"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 184
    const-string v0, "name"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 185
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v0, ""

    .line 187
    :goto_0
    sget-object v4, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/Profile$Types;->PRIVATE:Ljava/lang/Integer;

    if-ne v3, v4, :cond_0

    .line 188
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f0d0212

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 189
    :cond_0
    sget-object v4, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/Profile$Types;->CORPORATE:Ljava/lang/Integer;

    if-ne v3, v4, :cond_1

    .line 190
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0d020b

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 192
    :cond_1
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 195
    :goto_2
    const-string v1, "getProfileName"

    invoke-static {v1}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->close(Ljava/lang/String;)V

    .line 197
    return-object v0

    .line 185
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ")"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    move-object v0, p1

    goto :goto_1

    :cond_4
    move-object v0, p1

    goto :goto_2
.end method

.method public static updateWidgetCaption(Landroid/content/Context;Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;)V
    .locals 5

    .prologue
    .line 201
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 202
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f030092

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 203
    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lde/gdata/mobilesecurity/mms/ProfileWidgetProvider;

    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 204
    invoke-virtual {p1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getProfile()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lde/gdata/mobilesecurity/intents/ProfileSelector;->getProfileName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 206
    const v4, 0x7f0b032f

    invoke-virtual {v1, v4, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 207
    invoke-virtual {v0, v2, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 208
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 45
    invoke-super {p0, p1}, Lde/gdata/mobilesecurity/intents/GdActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const v0, 0x7f030023

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/intents/ProfileSelector;->setContentView(I)V

    .line 48
    new-instance v0, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/intents/ProfileSelector;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    .line 50
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/intents/ProfileSelector;->showDialog(I)V

    .line 51
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 14

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 90
    packed-switch p1, :pswitch_data_0

    .line 168
    :goto_0
    return-object v0

    .line 92
    :pswitch_0
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/ProfileSelector;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "PS.onCreateDialog"

    invoke-static {v2, v3}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->getDatabase(Landroid/content/Context;Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 93
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/ProfileSelector;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 95
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 96
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 98
    const-string v3, "SELECT profile, type, name FROM profiles"

    invoke-virtual {v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 99
    const-string v0, "profile"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 100
    const-string v0, "type"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 101
    const-string v0, "name"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 105
    if-eqz v7, :cond_9

    move v0, v1

    move v2, v1

    .line 106
    :cond_0
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 107
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 108
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 110
    if-eqz v3, :cond_1

    const-string v12, ""

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    :cond_1
    const-string v3, ""

    .line 112
    :goto_2
    sget-object v12, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/Profile$Types;->PRIVATE:Ljava/lang/Integer;

    if-ne v11, v12, :cond_2

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const v13, 0x7f0d0212

    invoke-virtual {v4, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 113
    :cond_2
    sget-object v12, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/Profile$Types;->CORPORATE:Ljava/lang/Integer;

    if-ne v11, v12, :cond_3

    .line 114
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const v13, 0x7f0d020b

    invoke-virtual {v4, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 116
    :cond_3
    sget-object v12, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/Profile$Types;->CORPORATE:Ljava/lang/Integer;

    if-ne v11, v12, :cond_4

    iget-object v11, p0, Lde/gdata/mobilesecurity/intents/ProfileSelector;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v11}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getPhoneType()I

    move-result v11

    sget-object v12, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/policy/Reactions$PhoneTypes;->PRIVATE:Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    and-int/2addr v11, v12

    if-eqz v11, :cond_5

    :cond_4
    iget-object v11, p0, Lde/gdata/mobilesecurity/intents/ProfileSelector;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v11}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getPhoneType()I

    move-result v11

    sget-object v12, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/policy/Reactions$PhoneTypes;->PRIVATE:Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    and-int/2addr v11, v12

    if-eqz v11, :cond_0

    .line 120
    :cond_5
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    iget-object v3, p0, Lde/gdata/mobilesecurity/intents/ProfileSelector;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v3}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getProfile()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    move v0, v2

    .line 124
    goto/16 :goto_1

    .line 110
    :cond_6
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " ("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v12, ")"

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2

    .line 126
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 130
    :cond_8
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move v2, v0

    .line 133
    :goto_3
    const-string v0, "PS.onCreateDialog"

    invoke-static {v0}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->close(Ljava/lang/String;)V

    .line 135
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0d0374

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    new-instance v4, Lde/gdata/mobilesecurity/intents/bu;

    invoke-direct {v4, p0, v5}, Lde/gdata/mobilesecurity/intents/bu;-><init>(Lde/gdata/mobilesecurity/intents/ProfileSelector;Ljava/util/ArrayList;)V

    invoke-virtual {v3, v0, v2, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0d0240

    new-instance v3, Lde/gdata/mobilesecurity/intents/bt;

    invoke-direct {v3, p0}, Lde/gdata/mobilesecurity/intents/bt;-><init>(Lde/gdata/mobilesecurity/intents/ProfileSelector;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0d021e

    new-instance v3, Lde/gdata/mobilesecurity/intents/bs;

    invoke-direct {v3, p0}, Lde/gdata/mobilesecurity/intents/bs;-><init>(Lde/gdata/mobilesecurity/intents/ProfileSelector;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lde/gdata/mobilesecurity/intents/br;

    invoke-direct {v2, p0}, Lde/gdata/mobilesecurity/intents/br;-><init>(Lde/gdata/mobilesecurity/intents/ProfileSelector;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 162
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/intents/ProfileSelector;->c:Landroid/app/AlertDialog;

    .line 163
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/ProfileSelector;->c:Landroid/app/AlertDialog;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 165
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/ProfileSelector;->c:Landroid/app/AlertDialog;

    goto/16 :goto_0

    :cond_9
    move v2, v1

    goto :goto_3

    .line 90
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setProfile(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 54
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/ProfileSelector;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isMMSEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 55
    invoke-static {p1}, Lde/gdata/mobilesecurity/mdm/DevicePolicy;->getArrayListDevicePolicies(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 57
    const-string v1, "Private"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 58
    invoke-static {p1, v6}, Lde/gdata/mobilesecurity/mdm/DevicePolicyReactionItem;->setCameraState(Landroid/content/Context;Z)V

    .line 60
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/mdm/DevicePolicy;

    .line 61
    new-instance v2, Lde/gdata/mobilesecurity/mdm/DevicePolicyReactionItem;

    invoke-direct {v2, p1}, Lde/gdata/mobilesecurity/mdm/DevicePolicyReactionItem;-><init>(Landroid/content/Context;)V

    .line 62
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/mdm/DevicePolicy;->getPolicyID()I

    move-result v0

    invoke-virtual {v2, v0}, Lde/gdata/mobilesecurity/mdm/DevicePolicyReactionItem;->loadDevicePolicyReactionItemFromDB(I)V

    .line 63
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/ProfileSelector;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getProfile()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/mdm/DevicePolicyReactionItem;->getProfileId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {v2}, Lde/gdata/mobilesecurity/mdm/DevicePolicyReactionItem;->getWlanSsid()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v6}, Lde/gdata/mobilesecurity/util/MyUtil;->disconnectFromWifi(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    .line 68
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/mdm/DevicePolicy;

    .line 69
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lde/gdata/mobilesecurity/mdm/DevicePolicy;->checkPolicy(I)V

    .line 70
    new-instance v2, Lde/gdata/mobilesecurity/mdm/DevicePolicyReactionItem;

    invoke-direct {v2, p1}, Lde/gdata/mobilesecurity/mdm/DevicePolicyReactionItem;-><init>(Landroid/content/Context;)V

    .line 71
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/mdm/DevicePolicy;->getPolicyID()I

    move-result v0

    invoke-virtual {v2, v0}, Lde/gdata/mobilesecurity/mdm/DevicePolicyReactionItem;->loadDevicePolicyReactionItemFromDB(I)V

    goto :goto_1

    .line 77
    :cond_2
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/ProfileSelector;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isKidsguardConfiguring()Z

    move-result v0

    if-nez v0, :cond_3

    .line 78
    new-instance v0, Lde/gdata/mobilesecurity/mms/ProfileSelector;

    invoke-direct {v0, p1}, Lde/gdata/mobilesecurity/mms/ProfileSelector;-><init>(Landroid/content/Context;)V

    .line 81
    invoke-virtual {v0, p2}, Lde/gdata/mobilesecurity/mms/ProfileSelector;->apply(Ljava/lang/String;)Z

    .line 83
    :cond_3
    return-void
.end method
