.class public Lde/gdata/mobilesecurity/scan/cloud/json/registration/RegistrationResponse$TimeLockParams;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public n:J

.field public p:J

.field public t:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const-wide/16 v0, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-wide v0, p0, Lde/gdata/mobilesecurity/scan/cloud/json/registration/RegistrationResponse$TimeLockParams;->n:J

    .line 58
    iput-wide v0, p0, Lde/gdata/mobilesecurity/scan/cloud/json/registration/RegistrationResponse$TimeLockParams;->t:J

    .line 59
    iput-wide v0, p0, Lde/gdata/mobilesecurity/scan/cloud/json/registration/RegistrationResponse$TimeLockParams;->p:J

    .line 62
    const-string v0, "n=(\\d*) t=(\\d*) p=(\\d*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 63
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 64
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v1

    if-ge v1, v4, :cond_1

    .line 65
    :cond_0
    const-string v0, "Invalid TimeLock settings"

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 72
    :goto_0
    return-void

    .line 68
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lde/gdata/mobilesecurity/scan/cloud/json/registration/RegistrationResponse$TimeLockParams;->n:J

    .line 69
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lde/gdata/mobilesecurity/scan/cloud/json/registration/RegistrationResponse$TimeLockParams;->t:J

    .line 70
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lde/gdata/mobilesecurity/scan/cloud/json/registration/RegistrationResponse$TimeLockParams;->p:J

    goto :goto_0
.end method
