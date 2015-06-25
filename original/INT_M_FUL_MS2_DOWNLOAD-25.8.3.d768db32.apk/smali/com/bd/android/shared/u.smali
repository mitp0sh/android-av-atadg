.class Lcom/bd/android/shared/u;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/bd/android/shared/u;

.field private static b:Z


# instance fields
.field private c:Landroid/content/Context;

.field private d:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    sput-object v0, Lcom/bd/android/shared/u;->a:Lcom/bd/android/shared/u;

    .line 27
    const/4 v0, 0x0

    sput-boolean v0, Lcom/bd/android/shared/u;->b:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object v0, p0, Lcom/bd/android/shared/u;->c:Landroid/content/Context;

    .line 30
    iput-object v0, p0, Lcom/bd/android/shared/u;->d:Landroid/content/SharedPreferences;

    .line 60
    iput-object p1, p0, Lcom/bd/android/shared/u;->c:Landroid/content/Context;

    .line 61
    iget-object v0, p0, Lcom/bd/android/shared/u;->c:Landroid/content/Context;

    const-string v1, "GLOBAL_SHARED_SETTINGS"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/bd/android/shared/u;->d:Landroid/content/SharedPreferences;

    .line 63
    iget-object v0, p0, Lcom/bd/android/shared/u;->d:Landroid/content/SharedPreferences;

    const-string v1, "DEBUG_MODE"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/bd/android/shared/u;->b:Z

    .line 65
    invoke-direct {p0}, Lcom/bd/android/shared/u;->q()V

    .line 66
    return-void
.end method

.method public static declared-synchronized a()Lcom/bd/android/shared/u;
    .locals 2

    .prologue
    .line 55
    const-class v0, Lcom/bd/android/shared/u;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/bd/android/shared/u;->a:Lcom/bd/android/shared/u;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/bd/android/shared/u;
    .locals 2

    .prologue
    .line 46
    const-class v1, Lcom/bd/android/shared/u;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/bd/android/shared/u;->a:Lcom/bd/android/shared/u;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/bd/android/shared/u;

    invoke-direct {v0, p0}, Lcom/bd/android/shared/u;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/bd/android/shared/u;->a:Lcom/bd/android/shared/u;

    .line 50
    :cond_0
    sget-object v0, Lcom/bd/android/shared/u;->a:Lcom/bd/android/shared/u;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static declared-synchronized a(J)V
    .locals 4

    .prologue
    .line 338
    const-class v1, Lcom/bd/android/shared/u;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/bd/android/shared/u;->a:Lcom/bd/android/shared/u;

    iget-object v0, v0, Lcom/bd/android/shared/u;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "START_LOGGING_TIMESTAMP"

    invoke-interface {v0, v2, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 339
    monitor-exit v1

    return-void

    .line 338
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static declared-synchronized d(Z)Z
    .locals 3

    .prologue
    .line 333
    const-class v1, Lcom/bd/android/shared/u;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/bd/android/shared/u;->a:Lcom/bd/android/shared/u;

    iget-object v0, v0, Lcom/bd/android/shared/u;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "EULA_ACCEPTED"

    invoke-interface {v0, v2, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static declared-synchronized e(Z)V
    .locals 3

    .prologue
    .line 348
    const-class v1, Lcom/bd/android/shared/u;

    monitor-enter v1

    :try_start_0
    sput-boolean p0, Lcom/bd/android/shared/u;->b:Z

    .line 350
    sget-object v0, Lcom/bd/android/shared/u;->a:Lcom/bd/android/shared/u;

    if-eqz v0, :cond_0

    .line 351
    sget-object v0, Lcom/bd/android/shared/u;->a:Lcom/bd/android/shared/u;

    iget-object v0, v0, Lcom/bd/android/shared/u;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "DEBUG_MODE"

    invoke-interface {v0, v2, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 353
    :cond_0
    monitor-exit v1

    return-void

    .line 348
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static declared-synchronized f()Z
    .locals 4

    .prologue
    .line 328
    const-class v1, Lcom/bd/android/shared/u;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/bd/android/shared/u;->a:Lcom/bd/android/shared/u;

    iget-object v0, v0, Lcom/bd/android/shared/u;->d:Landroid/content/SharedPreferences;

    const-string v2, "EULA_ACCEPTED"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static declared-synchronized g()J
    .locals 6

    .prologue
    .line 343
    const-class v1, Lcom/bd/android/shared/u;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/bd/android/shared/u;->a:Lcom/bd/android/shared/u;

    iget-object v0, v0, Lcom/bd/android/shared/u;->d:Landroid/content/SharedPreferences;

    const-string v2, "START_LOGGING_TIMESTAMP"

    const-wide/16 v4, 0x0

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    monitor-exit v1

    return-wide v2

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static declared-synchronized h()Z
    .locals 2

    .prologue
    .line 357
    const-class v0, Lcom/bd/android/shared/u;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/bd/android/shared/u;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private q()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 70
    iget-object v0, p0, Lcom/bd/android/shared/u;->c:Landroid/content/Context;

    const-string v1, "BITDEFENDER_SETTINGS"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 71
    if-nez v0, :cond_1

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    const-string v1, "EULA_ACCEPTED_2"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    const-string v1, "EULA_ACCEPTED_2"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 79
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "EULA_ACCEPTED_2"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 82
    iget-object v0, p0, Lcom/bd/android/shared/u;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "EULA_ACCEPTED"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method


# virtual methods
.method a(Z)Lcom/bd/android/shared/s;
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 116
    new-instance v1, Lcom/bd/android/shared/s;

    invoke-direct {v1}, Lcom/bd/android/shared/s;-><init>()V

    .line 118
    const/4 v0, 0x1

    if-ne v0, p1, :cond_1

    const-string v0, "TSMD"

    .line 120
    :goto_0
    iget-object v2, p0, Lcom/bd/android/shared/u;->d:Landroid/content/SharedPreferences;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PLIC_LICENSE_KEY"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/bd/android/shared/s;->a:Ljava/lang/String;

    .line 122
    iget-object v2, p0, Lcom/bd/android/shared/u;->d:Landroid/content/SharedPreferences;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PLIC_LICENSE_FIRST_DAY"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/bd/android/shared/s;->e:J

    .line 123
    iget-object v2, p0, Lcom/bd/android/shared/u;->d:Landroid/content/SharedPreferences;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PLIC_LICENSE_DAYS_LEFT"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/bd/android/shared/s;->g:J

    .line 124
    iget-object v2, p0, Lcom/bd/android/shared/u;->d:Landroid/content/SharedPreferences;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PLIC_LICENSE_LAST_CHECK"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/bd/android/shared/s;->h:J

    .line 125
    iget-object v2, p0, Lcom/bd/android/shared/u;->d:Landroid/content/SharedPreferences;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PLIC_LICENSE_TYPE"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/bd/android/shared/s;->c:Ljava/lang/String;

    .line 126
    iget-object v2, p0, Lcom/bd/android/shared/u;->d:Landroid/content/SharedPreferences;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PLIC_LICENSE_INTERVAL_DAYS"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/bd/android/shared/s;->j:I

    .line 127
    iget-object v2, p0, Lcom/bd/android/shared/u;->d:Landroid/content/SharedPreferences;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PLIC_LICENSE_PARTNER_ID"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/bd/android/shared/s;->i:I

    .line 128
    iget-object v2, p0, Lcom/bd/android/shared/u;->d:Landroid/content/SharedPreferences;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PLIC_LICENSE_STATUS"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/bd/android/shared/s;->d:Ljava/lang/String;

    .line 130
    invoke-virtual {v1}, Lcom/bd/android/shared/s;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bd/android/shared/u;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    invoke-static {}, Lcom/bd/android/shared/LicenseProdActivator;->getInstance()Lcom/bd/android/shared/LicenseProdActivator;

    move-result-object v0

    .line 133
    if-eqz v0, :cond_0

    .line 135
    iget-wide v2, v1, Lcom/bd/android/shared/s;->g:J

    cmp-long v2, v2, v6

    if-lez v2, :cond_2

    .line 137
    const-string v2, "LICENSE_PREMIUM"

    invoke-virtual {v0, v2}, Lcom/bd/android/shared/LicenseProdActivator;->a(Ljava/lang/String;)V

    .line 146
    :cond_0
    :goto_1
    return-object v1

    .line 118
    :cond_1
    const-string v0, ""

    goto/16 :goto_0

    .line 141
    :cond_2
    const-string v2, "LICENSE_FREE"

    invoke-virtual {v0, v2}, Lcom/bd/android/shared/LicenseProdActivator;->a(Ljava/lang/String;)V

    goto :goto_1
.end method

.method a(I)V
    .locals 2

    .prologue
    .line 426
    iget-object v0, p0, Lcom/bd/android/shared/u;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "app_version_code"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 427
    return-void
.end method

.method declared-synchronized a(Lcom/bd/android/shared/s;)V
    .locals 4

    .prologue
    .line 103
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bd/android/shared/u;->c:Landroid/content/Context;

    const-string v1, "com.bd.android.shared.action.SDK_LICENSE"

    iget-wide v2, p1, Lcom/bd/android/shared/s;->h:J

    invoke-static {v0, v1, v2, v3}, Lcom/bd/android/shared/BDUtils;->a(Landroid/content/Context;Ljava/lang/String;J)V

    .line 105
    iget-object v0, p0, Lcom/bd/android/shared/u;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "SDK_LICENSE_KEY"

    iget-object v2, p1, Lcom/bd/android/shared/s;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "SDK_LICENSE_MODULES_ID"

    iget-object v2, p1, Lcom/bd/android/shared/s;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "SDK_LICENSE_FIRST_DAY"

    iget-wide v2, p1, Lcom/bd/android/shared/s;->e:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "SDK_LICENSE_DAYS_LEFT"

    iget-wide v2, p1, Lcom/bd/android/shared/s;->g:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "SDK_LICENSE_LAST_CHECK"

    iget-wide v2, p1, Lcom/bd/android/shared/s;->h:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "SDK_LICENSE_PARTNER_ID"

    iget v2, p1, Lcom/bd/android/shared/s;->i:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    monitor-exit p0

    return-void

    .line 103
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(Lcom/bd/android/shared/s;Z)V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v0, 0x0

    const-wide/16 v10, 0x0

    .line 151
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p2}, Lcom/bd/android/shared/u;->a(Z)Lcom/bd/android/shared/s;

    move-result-object v1

    .line 153
    invoke-static {}, Lcom/bd/android/shared/LicenseProdActivator;->getInstance()Lcom/bd/android/shared/LicenseProdActivator;

    move-result-object v2

    .line 154
    iget-object v3, p0, Lcom/bd/android/shared/u;->c:Landroid/content/Context;

    invoke-static {v3}, Lcom/bd/android/shared/LicenseActivator;->getInstance(Landroid/content/Context;)Lcom/bd/android/shared/LicenseActivator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 155
    if-nez v3, :cond_1

    .line 271
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 160
    :cond_1
    if-eqz v3, :cond_2

    :try_start_1
    invoke-virtual {v3}, Lcom/bd/android/shared/LicenseActivator;->a()Z

    move-result v0

    .line 161
    :cond_2
    invoke-virtual {v3}, Lcom/bd/android/shared/LicenseActivator;->b()Z

    move-result v4

    .line 163
    iget-object v5, p1, Lcom/bd/android/shared/s;->d:Ljava/lang/String;

    if-eqz v5, :cond_3

    iget-object v5, p1, Lcom/bd/android/shared/s;->d:Ljava/lang/String;

    const-string v6, "invalid"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 165
    const-wide/16 v6, -0x1

    iput-wide v6, p1, Lcom/bd/android/shared/s;->g:J

    .line 168
    :cond_3
    invoke-virtual {v1}, Lcom/bd/android/shared/s;->a()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p1}, Lcom/bd/android/shared/s;->a()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-wide v6, p1, Lcom/bd/android/shared/s;->g:J

    cmp-long v5, v6, v10

    if-nez v5, :cond_4

    iget-object v5, v1, Lcom/bd/android/shared/s;->a:Ljava/lang/String;

    iget-object v6, p1, Lcom/bd/android/shared/s;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 173
    :cond_4
    invoke-virtual {p1}, Lcom/bd/android/shared/s;->a()Z

    move-result v5

    if-nez v5, :cond_c

    .line 175
    if-eqz v4, :cond_5

    .line 177
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/bd/android/shared/LicenseActivator;->setThirdPartyLicenseStatus(Z)V

    .line 179
    :cond_5
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/bd/android/shared/u;->b(Z)V

    .line 215
    :goto_1
    if-eqz v2, :cond_b

    invoke-virtual {v1}, Lcom/bd/android/shared/s;->a()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-virtual {p1}, Lcom/bd/android/shared/s;->a()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 217
    iget-wide v6, v1, Lcom/bd/android/shared/s;->g:J

    cmp-long v5, v6, v10

    if-gtz v5, :cond_7

    iget-wide v6, p1, Lcom/bd/android/shared/s;->g:J

    cmp-long v5, v6, v10

    if-lez v5, :cond_7

    .line 219
    if-eqz v4, :cond_6

    .line 221
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/bd/android/shared/LicenseActivator;->setThirdPartyLicenseStatus(Z)V

    .line 223
    :cond_6
    const-string v5, "LICENSE_PREMIUM"

    invoke-virtual {v2, v5}, Lcom/bd/android/shared/LicenseProdActivator;->a(Ljava/lang/String;)V

    .line 226
    :cond_7
    iget-wide v6, v1, Lcom/bd/android/shared/s;->g:J

    cmp-long v5, v6, v10

    if-lez v5, :cond_9

    iget-wide v6, p1, Lcom/bd/android/shared/s;->g:J

    cmp-long v5, v6, v10

    if-gtz v5, :cond_9

    .line 228
    if-eqz v4, :cond_8

    .line 230
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/bd/android/shared/LicenseActivator;->setThirdPartyLicenseStatus(Z)V

    .line 232
    :cond_8
    if-eqz v0, :cond_12

    .line 234
    const-string v0, "LICENSE_FREE"

    invoke-virtual {v2, v0}, Lcom/bd/android/shared/LicenseProdActivator;->a(Ljava/lang/String;)V

    .line 242
    :cond_9
    :goto_2
    iget-wide v6, v1, Lcom/bd/android/shared/s;->g:J

    cmp-long v0, v6, v10

    if-gtz v0, :cond_a

    iget-wide v6, p1, Lcom/bd/android/shared/s;->g:J

    cmp-long v0, v6, v10

    if-gtz v0, :cond_a

    .line 244
    if-eqz v4, :cond_a

    .line 246
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Lcom/bd/android/shared/LicenseActivator;->setThirdPartyLicenseStatus(Z)V

    .line 250
    :cond_a
    iget-wide v0, v1, Lcom/bd/android/shared/s;->g:J

    cmp-long v0, v0, v10

    if-lez v0, :cond_b

    iget-wide v0, p1, Lcom/bd/android/shared/s;->g:J

    cmp-long v0, v0, v10

    if-lez v0, :cond_b

    .line 252
    if-eqz v4, :cond_b

    .line 254
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Lcom/bd/android/shared/LicenseActivator;->setThirdPartyLicenseStatus(Z)V

    .line 259
    :cond_b
    if-ne v12, p2, :cond_13

    const-string v0, "TSMD"

    .line 261
    :goto_3
    iget-object v1, p0, Lcom/bd/android/shared/u;->d:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PLIC_LICENSE_KEY"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/bd/android/shared/s;->a:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PLIC_LICENSE_FIRST_DAY"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-wide v4, p1, Lcom/bd/android/shared/s;->e:J

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PLIC_LICENSE_DAYS_LEFT"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-wide v4, p1, Lcom/bd/android/shared/s;->g:J

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PLIC_LICENSE_LAST_CHECK"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-wide v4, p1, Lcom/bd/android/shared/s;->h:J

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PLIC_LICENSE_TYPE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/bd/android/shared/s;->c:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PLIC_LICENSE_INTERVAL_DAYS"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, p1, Lcom/bd/android/shared/s;->j:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PLIC_LICENSE_PARTNER_ID"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, p1, Lcom/bd/android/shared/s;->i:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PLIC_LICENSE_STATUS"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p1, Lcom/bd/android/shared/s;->d:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 151
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 183
    :cond_c
    if-eqz v2, :cond_e

    :try_start_2
    invoke-virtual {v1}, Lcom/bd/android/shared/s;->a()Z

    move-result v5

    if-nez v5, :cond_e

    .line 185
    iget-wide v6, p1, Lcom/bd/android/shared/s;->g:J

    cmp-long v5, v6, v10

    if-lez v5, :cond_f

    .line 187
    if-eqz v4, :cond_d

    .line 189
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/bd/android/shared/LicenseActivator;->setThirdPartyLicenseStatus(Z)V

    .line 191
    :cond_d
    const-string v5, "LICENSE_PREMIUM"

    invoke-virtual {v2, v5}, Lcom/bd/android/shared/LicenseProdActivator;->a(Ljava/lang/String;)V

    .line 212
    :cond_e
    :goto_4
    iget-object v5, p0, Lcom/bd/android/shared/u;->c:Landroid/content/Context;

    const-string v6, "com.bd.android.shared.action.PRODUCT_LICENSE"

    iget-wide v8, p1, Lcom/bd/android/shared/s;->h:J

    invoke-static {v5, v6, v8, v9}, Lcom/bd/android/shared/BDUtils;->a(Landroid/content/Context;Ljava/lang/String;J)V

    goto/16 :goto_1

    .line 196
    :cond_f
    if-eqz v4, :cond_10

    .line 198
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/bd/android/shared/LicenseActivator;->setThirdPartyLicenseStatus(Z)V

    .line 201
    :cond_10
    if-eqz v0, :cond_11

    .line 203
    const-string v5, "LICENSE_FREE"

    invoke-virtual {v2, v5}, Lcom/bd/android/shared/LicenseProdActivator;->a(Ljava/lang/String;)V

    goto :goto_4

    .line 207
    :cond_11
    const-string v5, "LICENSE_EXPIRED"

    invoke-virtual {v2, v5}, Lcom/bd/android/shared/LicenseProdActivator;->a(Ljava/lang/String;)V

    goto :goto_4

    .line 238
    :cond_12
    const-string v0, "LICENSE_EXPIRED"

    invoke-virtual {v2, v0}, Lcom/bd/android/shared/LicenseProdActivator;->a(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 259
    :cond_13
    const-string v0, ""
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_3
.end method

.method a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 285
    sget-object v0, Lcom/bd/android/shared/u;->a:Lcom/bd/android/shared/u;

    iget-object v0, v0, Lcom/bd/android/shared/u;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "DEVICE_ID_2"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 286
    return-void
.end method

.method b()Lcom/bd/android/shared/s;
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 88
    new-instance v0, Lcom/bd/android/shared/s;

    invoke-direct {v0}, Lcom/bd/android/shared/s;-><init>()V

    .line 90
    iget-object v1, p0, Lcom/bd/android/shared/u;->d:Landroid/content/SharedPreferences;

    const-string v2, "SDK_LICENSE_KEY"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bd/android/shared/s;->a:Ljava/lang/String;

    .line 91
    iget-object v1, p0, Lcom/bd/android/shared/u;->d:Landroid/content/SharedPreferences;

    const-string v2, "SDK_LICENSE_MODULES_ID"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bd/android/shared/s;->b:Ljava/lang/String;

    .line 93
    iget-object v1, p0, Lcom/bd/android/shared/u;->d:Landroid/content/SharedPreferences;

    const-string v2, "SDK_LICENSE_FIRST_DAY"

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/bd/android/shared/s;->e:J

    .line 94
    iget-object v1, p0, Lcom/bd/android/shared/u;->d:Landroid/content/SharedPreferences;

    const-string v2, "SDK_LICENSE_DAYS_LEFT"

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/bd/android/shared/s;->g:J

    .line 95
    iget-object v1, p0, Lcom/bd/android/shared/u;->d:Landroid/content/SharedPreferences;

    const-string v2, "SDK_LICENSE_LAST_CHECK"

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/bd/android/shared/s;->h:J

    .line 96
    iget-object v1, p0, Lcom/bd/android/shared/u;->d:Landroid/content/SharedPreferences;

    const-string v2, "SDK_LICENSE_PARTNER_ID"

    const/4 v3, -0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/bd/android/shared/s;->i:I

    .line 98
    return-object v0
.end method

.method declared-synchronized b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 372
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/bd/android/shared/u;->j()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/bd/android/shared/u;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_referrer"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 376
    :cond_0
    monitor-exit p0

    return-void

    .line 372
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method b(Z)V
    .locals 2

    .prologue
    .line 280
    iget-object v0, p0, Lcom/bd/android/shared/u;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "UPDATE_LICENSE_NEEDED"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 281
    return-void
.end method

.method declared-synchronized c(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 385
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bd/android/shared/u;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "CLIENT_ID"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 386
    monitor-exit p0

    return-void

    .line 385
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method c(Z)V
    .locals 2

    .prologue
    .line 323
    iget-object v0, p0, Lcom/bd/android/shared/u;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "THIRD_PARTY_LICENSE_STATUS"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 324
    return-void
.end method

.method c()Z
    .locals 3

    .prologue
    .line 275
    iget-object v0, p0, Lcom/bd/android/shared/u;->d:Landroid/content/SharedPreferences;

    const-string v1, "UPDATE_LICENSE_NEEDED"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method d()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 290
    sget-object v1, Lcom/bd/android/shared/u;->a:Lcom/bd/android/shared/u;

    iget-object v1, v1, Lcom/bd/android/shared/u;->d:Landroid/content/SharedPreferences;

    const-string v2, "DEVICE_ID"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 292
    sget-object v1, Lcom/bd/android/shared/u;->a:Lcom/bd/android/shared/u;

    iget-object v1, v1, Lcom/bd/android/shared/u;->d:Landroid/content/SharedPreferences;

    const-string v2, "DEVICE_ID"

    const-string v3, "a"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 293
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 295
    sget-object v1, Lcom/bd/android/shared/u;->a:Lcom/bd/android/shared/u;

    iget-object v1, v1, Lcom/bd/android/shared/u;->d:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "DEVICE_ID"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "NEED_LOGGED_OUT"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 313
    :goto_0
    return-object v0

    .line 304
    :cond_0
    iget-object v1, p0, Lcom/bd/android/shared/u;->c:Landroid/content/Context;

    const-string v2, "BITDEFENDER_SETTINGS"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 305
    const-string v2, "DEVICE_ID"

    const-string v3, "a"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 306
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 308
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "DEVICE_ID"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 309
    sget-object v1, Lcom/bd/android/shared/u;->a:Lcom/bd/android/shared/u;

    iget-object v1, v1, Lcom/bd/android/shared/u;->d:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "NEED_LOGGED_OUT"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 313
    :cond_1
    sget-object v1, Lcom/bd/android/shared/u;->a:Lcom/bd/android/shared/u;

    iget-object v1, v1, Lcom/bd/android/shared/u;->d:Landroid/content/SharedPreferences;

    const-string v2, "DEVICE_ID_2"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method d(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 395
    if-nez p1, :cond_0

    .line 397
    :goto_0
    iget-object v0, p0, Lcom/bd/android/shared/u;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "device_name_new"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 398
    return-void

    .line 395
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method e()Z
    .locals 3

    .prologue
    .line 318
    iget-object v0, p0, Lcom/bd/android/shared/u;->d:Landroid/content/SharedPreferences;

    const-string v1, "THIRD_PARTY_LICENSE_STATUS"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method declared-synchronized f(Z)V
    .locals 2

    .prologue
    .line 367
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/bd/android/shared/u;->a:Lcom/bd/android/shared/u;

    iget-object v0, v0, Lcom/bd/android/shared/u;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "SEND_LOG_REPORT"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 368
    monitor-exit p0

    return-void

    .line 367
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public g(Z)V
    .locals 2

    .prologue
    .line 413
    iget-object v0, p0, Lcom/bd/android/shared/u;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "linked"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 414
    return-void
.end method

.method public h(Z)V
    .locals 2

    .prologue
    .line 417
    iget-object v0, p0, Lcom/bd/android/shared/u;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "PREF_FORCE_MYBD_SYNC"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 418
    return-void
.end method

.method declared-synchronized i()Z
    .locals 3

    .prologue
    .line 362
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/bd/android/shared/u;->a:Lcom/bd/android/shared/u;

    iget-object v0, v0, Lcom/bd/android/shared/u;->d:Landroid/content/SharedPreferences;

    const-string v1, "SEND_LOG_REPORT"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized j()Ljava/lang/String;
    .locals 3

    .prologue
    .line 380
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bd/android/shared/u;->d:Landroid/content/SharedPreferences;

    const-string v1, "pref_referrer"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method k()Ljava/lang/String;
    .locals 3

    .prologue
    .line 390
    iget-object v0, p0, Lcom/bd/android/shared/u;->d:Landroid/content/SharedPreferences;

    const-string v1, "CLIENT_ID"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method l()Ljava/lang/String;
    .locals 3

    .prologue
    .line 402
    iget-object v0, p0, Lcom/bd/android/shared/u;->d:Landroid/content/SharedPreferences;

    const-string v1, "device_name_new"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 403
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 404
    :cond_1
    invoke-virtual {p0, v0}, Lcom/bd/android/shared/u;->d(Ljava/lang/String;)V

    .line 405
    return-object v0
.end method

.method public m()Z
    .locals 3

    .prologue
    .line 409
    iget-object v0, p0, Lcom/bd/android/shared/u;->d:Landroid/content/SharedPreferences;

    const-string v1, "linked"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public n()Z
    .locals 3

    .prologue
    .line 421
    iget-object v0, p0, Lcom/bd/android/shared/u;->d:Landroid/content/SharedPreferences;

    const-string v1, "PREF_FORCE_MYBD_SYNC"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method o()V
    .locals 2

    .prologue
    .line 431
    iget-object v0, p0, Lcom/bd/android/shared/u;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "app_version_code"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 432
    return-void
.end method

.method p()I
    .locals 3

    .prologue
    .line 436
    iget-object v0, p0, Lcom/bd/android/shared/u;->d:Landroid/content/SharedPreferences;

    const-string v1, "app_version_code"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method
