.class public Lde/gdata/mobilesecurity/activities/debug/DebugOptions;
.super Lde/gdata/mobilesecurity/intents/GdActivity;
.source "SourceFile"


# instance fields
.field private a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

.field private c:Landroid/widget/CheckBox;

.field private d:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lde/gdata/mobilesecurity/intents/GdActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lde/gdata/mobilesecurity/activities/debug/DebugOptions;)Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/debug/DebugOptions;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    return-object v0
.end method

.method private a()V
    .locals 12

    .prologue
    const/4 v7, 0x0

    .line 69
    new-instance v0, Ljava/io/File;

    const-string v1, "X"

    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/activities/debug/DebugOptions;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "X$"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v10

    .line 73
    array-length v11, v10

    const/4 v0, 0x0

    move v9, v0

    :goto_0
    if-ge v9, v11, :cond_0

    aget-object v0, v10, v9

    .line 74
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 75
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/debug/DebugOptions;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 81
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    :try_start_1
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 86
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-virtual {v8}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v8}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    .line 89
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    .line 90
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 98
    :goto_1
    :try_start_3
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 102
    :goto_2
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 73
    :goto_3
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_0

    .line 93
    :catch_0
    move-exception v0

    move-object v1, v7

    move-object v2, v7

    .line 94
    :goto_4
    :try_start_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Copying database to SD failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->e(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 98
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 102
    :goto_5
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_3

    .line 103
    :catch_1
    move-exception v0

    goto :goto_3

    .line 97
    :catchall_0
    move-exception v0

    move-object v1, v7

    move-object v8, v7

    .line 98
    :goto_6
    :try_start_8
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 102
    :goto_7
    :try_start_9
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    .line 104
    :goto_8
    throw v0

    .line 99
    :catch_2
    move-exception v0

    goto :goto_2

    .line 103
    :catch_3
    move-exception v0

    goto :goto_3

    .line 99
    :catch_4
    move-exception v0

    goto :goto_5

    :catch_5
    move-exception v2

    goto :goto_7

    .line 103
    :catch_6
    move-exception v1

    goto :goto_8

    .line 107
    :cond_0
    return-void

    .line 97
    :catchall_1
    move-exception v0

    move-object v1, v7

    goto :goto_6

    :catchall_2
    move-exception v0

    move-object v1, v6

    goto :goto_6

    :catchall_3
    move-exception v0

    move-object v8, v2

    goto :goto_6

    .line 93
    :catch_7
    move-exception v0

    move-object v1, v7

    move-object v2, v8

    goto :goto_4

    :catch_8
    move-exception v0

    move-object v1, v6

    move-object v2, v8

    goto :goto_4

    :cond_1
    move-object v6, v7

    move-object v8, v7

    goto :goto_1
.end method

.method static synthetic b(Lde/gdata/mobilesecurity/activities/debug/DebugOptions;)Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/debug/DebugOptions;->d:Landroid/widget/CheckBox;

    return-object v0
.end method

.method private b()V
    .locals 6

    .prologue
    .line 143
    const v0, 0x7f03004b

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/debug/DebugOptions;->setContentView(I)V

    .line 145
    const v0, 0x7f0b018b

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/debug/DebugOptions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lde/gdata/mobilesecurity/activities/debug/a;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/activities/debug/a;-><init>(Lde/gdata/mobilesecurity/activities/debug/DebugOptions;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    const v0, 0x7f0b0187

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/debug/DebugOptions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lde/gdata/mobilesecurity/activities/debug/l;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/activities/debug/l;-><init>(Lde/gdata/mobilesecurity/activities/debug/DebugOptions;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    const v0, 0x7f0b0182

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/debug/DebugOptions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "d768db328c3846ebc59e76457a560ed266e5b8de"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    const v0, 0x7f0b0183

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/debug/DebugOptions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "hotfix/v25.8.1"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    const v0, 0x7f0b0184

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/debug/DebugOptions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/debug/DebugOptions;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lde/gdata/mobilesecurity/util/Trial;->getMMSId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/ACRAConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/acra/ACRAConfiguration;->formUri()Ljava/lang/String;

    move-result-object v1

    .line 175
    const v0, 0x7f0b0188

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/debug/DebugOptions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 176
    const-string v2, "http://appdevlinux.gdata.de:5983/acra/msa"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 177
    new-instance v1, Lde/gdata/mobilesecurity/activities/debug/s;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/activities/debug/s;-><init>(Lde/gdata/mobilesecurity/activities/debug/DebugOptions;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 189
    new-instance v1, Lde/gdata/webportal/android/Preferences;

    invoke-direct {v1, p0}, Lde/gdata/webportal/android/Preferences;-><init>(Landroid/content/Context;)V

    .line 190
    const v0, 0x7f0b0185

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/debug/DebugOptions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 191
    invoke-virtual {v1}, Lde/gdata/webportal/android/Preferences;->getWebPortalAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 192
    const v2, 0x7f0b0186

    invoke-virtual {p0, v2}, Lde/gdata/mobilesecurity/activities/debug/DebugOptions;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lde/gdata/mobilesecurity/activities/debug/t;

    invoke-direct {v3, p0, v1, v0}, Lde/gdata/mobilesecurity/activities/debug/t;-><init>(Lde/gdata/mobilesecurity/activities/debug/DebugOptions;Lde/gdata/webportal/android/Preferences;Landroid/widget/EditText;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    const v0, 0x7f0b0189

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/debug/DebugOptions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/ACRAConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lorg/acra/ACRAConfiguration;->formUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    const v0, 0x7f0b018f

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/debug/DebugOptions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Last executed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    iget-object v3, p0, Lde/gdata/mobilesecurity/activities/debug/DebugOptions;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v3}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getTimeOfLastPeriodicUpdate()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-static {v2}, Lde/gdata/mobilesecurity/util/MyDate;->toUserFriendlyString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    const v0, 0x7f0b018a

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/debug/DebugOptions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lde/gdata/mobilesecurity/activities/debug/u;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/activities/debug/u;-><init>(Lde/gdata/mobilesecurity/activities/debug/DebugOptions;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    const v0, 0x7f0b018c

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/debug/DebugOptions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/debug/DebugOptions;->d:Landroid/widget/CheckBox;

    .line 214
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/debug/DebugOptions;->d:Landroid/widget/CheckBox;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/debug/DebugOptions;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isBitDefenderEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 216
    const v0, 0x7f0b018e

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/debug/DebugOptions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 217
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/debug/DebugOptions;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isBitDefenderKillSwitch()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 218
    new-instance v1, Lde/gdata/mobilesecurity/activities/debug/v;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/activities/debug/v;-><init>(Lde/gdata/mobilesecurity/activities/debug/DebugOptions;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 226
    const v0, 0x7f0b018d

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/debug/DebugOptions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 227
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/debug/DebugOptions;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isScanEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 228
    new-instance v1, Lde/gdata/mobilesecurity/activities/debug/w;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/activities/debug/w;-><init>(Lde/gdata/mobilesecurity/activities/debug/DebugOptions;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 235
    const v0, 0x7f0b0191

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/debug/DebugOptions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lde/gdata/mobilesecurity/activities/debug/x;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/activities/debug/x;-><init>(Lde/gdata/mobilesecurity/activities/debug/DebugOptions;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 259
    const-string v0, "no conenction"

    .line 260
    invoke-static {p0}, Lde/gdata/mobilesecurity/util/MyUtil;->isOnline(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "connected (no Wi-Fi)"

    .line 261
    :cond_0
    invoke-static {p0}, Lde/gdata/mobilesecurity/util/MyUtil;->isConnectedViaWiFi(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "Wi-Fi"

    move-object v1, v0

    .line 262
    :goto_0
    const v0, 0x7f0b0196

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/debug/DebugOptions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connection: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    new-instance v1, Lde/gdata/mobilesecurity/sigfile/SignatureDb;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/sigfile/SignatureDb;-><init>(Landroid/content/Context;)V

    .line 265
    const v0, 0x7f0b0197

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/debug/DebugOptions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sig date: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, p0}, Lde/gdata/mobilesecurity/sigfile/SignatureDb;->getSignatureFileDate(Landroid/content/Context;)Ljava/util/Date;

    move-result-object v3

    invoke-static {v3}, Lde/gdata/mobilesecurity/util/MyDate;->toUserFriendlyString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "(Version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, p0}, Lde/gdata/mobilesecurity/sigfile/SignatureDb;->getSignatureVersion(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    const v0, 0x7f0b0198

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/debug/DebugOptions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lde/gdata/mobilesecurity/activities/debug/y;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/activities/debug/y;-><init>(Lde/gdata/mobilesecurity/activities/debug/DebugOptions;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 281
    const v0, 0x7f0b0199

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/debug/DebugOptions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lde/gdata/mobilesecurity/activities/debug/b;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/activities/debug/b;-><init>(Lde/gdata/mobilesecurity/activities/debug/DebugOptions;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 299
    const v0, 0x7f0b01bc

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/debug/DebugOptions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/debug/DebugOptions;->c:Landroid/widget/CheckBox;

    .line 301
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/debug/DebugOptions;->c:Landroid/widget/CheckBox;

    new-instance v1, Lde/gdata/mobilesecurity/activities/debug/c;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/activities/debug/c;-><init>(Lde/gdata/mobilesecurity/activities/debug/DebugOptions;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 308
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/debug/DebugOptions;->c:Landroid/widget/CheckBox;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/debug/DebugOptions;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isMockLocationAllowed()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 310
    const v0, 0x7f0b01ba

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/debug/DebugOptions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 311
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/debug/DebugOptions;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getMMSLogDetails()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 312
    new-instance v1, Lde/gdata/mobilesecurity/activities/debug/d;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/activities/debug/d;-><init>(Lde/gdata/mobilesecurity/activities/debug/DebugOptions;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 318
    const v0, 0x7f0b01b9

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/debug/DebugOptions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lde/gdata/mobilesecurity/activities/debug/e;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/activities/debug/e;-><init>(Lde/gdata/mobilesecurity/activities/debug/DebugOptions;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 325
    const v0, 0x7f0b01ae

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/debug/DebugOptions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lde/gdata/mobilesecurity/activities/debug/f;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/activities/debug/f;-><init>(Lde/gdata/mobilesecurity/activities/debug/DebugOptions;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 332
    const v0, 0x7f0b019a

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/debug/DebugOptions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Last executed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    iget-object v3, p0, Lde/gdata/mobilesecurity/activities/debug/DebugOptions;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v3}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getTimeOfLastPeriodicScan()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-static {v2}, Lde/gdata/mobilesecurity/util/MyDate;->toUserFriendlyString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 335
    const v0, 0x7f0b0194

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/debug/DebugOptions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lde/gdata/mobilesecurity/activities/debug/g;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/activities/debug/g;-><init>(Lde/gdata/mobilesecurity/activities/debug/DebugOptions;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 358
    const v0, 0x7f0b019b

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/debug/DebugOptions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lde/gdata/mobilesecurity/activities/debug/h;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/activities/debug/h;-><init>(Lde/gdata/mobilesecurity/activities/debug/DebugOptions;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 368
    const v0, 0x7f0b019d

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/debug/DebugOptions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Most recent id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/debug/DebugOptions;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getLatestNewsId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 371
    const v0, 0x7f0b019e

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/debug/DebugOptions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lde/gdata/mobilesecurity/activities/debug/i;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/activities/debug/i;-><init>(Lde/gdata/mobilesecurity/activities/debug/DebugOptions;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 382
    const v0, 0x7f0b019f

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/debug/DebugOptions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lde/gdata/mobilesecurity/activities/debug/j;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/activities/debug/j;-><init>(Lde/gdata/mobilesecurity/activities/debug/DebugOptions;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 391
    const v0, 0x7f0b01a0

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/debug/DebugOptions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/debug/DebugOptions;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getDebugPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 393
    const v0, 0x7f0b01a1

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/debug/DebugOptions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lde/gdata/mobilesecurity/activities/debug/k;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/activities/debug/k;-><init>(Lde/gdata/mobilesecurity/activities/debug/DebugOptions;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 401
    const v0, 0x7f0b01a6

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/debug/DebugOptions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lde/gdata/mobilesecurity/activities/debug/m;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/activities/debug/m;-><init>(Lde/gdata/mobilesecurity/activities/debug/DebugOptions;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 416
    const v0, 0x7f0b01a8

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/debug/DebugOptions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 417
    invoke-static {}, Lde/gdata/mobilesecurity/statistics/ProtocolTransmitter;->getMiiReportInDebugMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 418
    new-instance v1, Lde/gdata/mobilesecurity/activities/debug/n;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/activities/debug/n;-><init>(Lde/gdata/mobilesecurity/activities/debug/DebugOptions;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 425
    const v0, 0x7f0b01a9

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/debug/DebugOptions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mem: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lde/gdata/mobilesecurity/util/MyUtil;->getFreeMemoryInBytes(Landroid/content/Context;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/32 v4, 0x100000

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "MB free"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 428
    const v0, 0x7f0b01ac

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/debug/DebugOptions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lde/gdata/mobilesecurity/activities/debug/o;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/activities/debug/o;-><init>(Lde/gdata/mobilesecurity/activities/debug/DebugOptions;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 444
    const v0, 0x7f0b01ad

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/debug/DebugOptions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lde/gdata/mobilesecurity/activities/debug/p;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/activities/debug/p;-><init>(Lde/gdata/mobilesecurity/activities/debug/DebugOptions;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 460
    const v0, 0x7f0b01b7

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/debug/DebugOptions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lde/gdata/mobilesecurity/activities/debug/q;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/activities/debug/q;-><init>(Lde/gdata/mobilesecurity/activities/debug/DebugOptions;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 466
    return-void

    :cond_1
    move-object v1, v0

    goto/16 :goto_0
.end method

.method static synthetic c(Lde/gdata/mobilesecurity/activities/debug/DebugOptions;)Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/debug/DebugOptions;->c:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic d(Lde/gdata/mobilesecurity/activities/debug/DebugOptions;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lde/gdata/mobilesecurity/activities/debug/DebugOptions;->a()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .prologue
    .line 473
    invoke-super {p0, p1}, Lde/gdata/mobilesecurity/intents/GdActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 475
    invoke-direct {p0}, Lde/gdata/mobilesecurity/activities/debug/DebugOptions;->b()V

    .line 476
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 111
    invoke-super {p0, p1}, Lde/gdata/mobilesecurity/intents/GdActivity;->onCreate(Landroid/os/Bundle;)V

    .line 112
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/debug/DebugOptions;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 114
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/debug/DebugOptions;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyUtil;->isWebServerEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 115
    if-eqz v0, :cond_0

    new-instance v0, Lde/gdata/mobilesecurity/activities/debug/WebServer;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/debug/DebugOptions;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x22b8

    invoke-direct {v0, v1, v2}, Lde/gdata/mobilesecurity/activities/debug/WebServer;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/debug/WebServer;->start()V

    .line 117
    :cond_0
    new-instance v0, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/debug/DebugOptions;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    .line 118
    invoke-direct {p0}, Lde/gdata/mobilesecurity/activities/debug/DebugOptions;->b()V

    .line 119
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 123
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 124
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/debug/DebugOptions;->finish()V

    .line 127
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 133
    invoke-super {p0}, Lde/gdata/mobilesecurity/intents/GdActivity;->onResume()V

    .line 134
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/debug/DebugOptions;->c:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/debug/DebugOptions;->c:Landroid/widget/CheckBox;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/debug/DebugOptions;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isMockLocationAllowed()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 137
    :cond_0
    return-void
.end method

.method public showMessageBox(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 480
    const-string v0, "Debug"

    const-string v1, "Ok.."

    new-instance v2, Lde/gdata/mobilesecurity/activities/debug/r;

    invoke-direct {v2, p0}, Lde/gdata/mobilesecurity/activities/debug/r;-><init>(Lde/gdata/mobilesecurity/activities/debug/DebugOptions;)V

    invoke-static {p0, v0, p1, v1, v2}, Lde/gdata/mobilesecurity/fragments/GDDialogFragment;->newInstance(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lde/gdata/mobilesecurity/fragments/GDDialogFragment;

    move-result-object v0

    .line 487
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/debug/DebugOptions;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "DIALOG_MESSAGE_BOX"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 488
    return-void
.end method
