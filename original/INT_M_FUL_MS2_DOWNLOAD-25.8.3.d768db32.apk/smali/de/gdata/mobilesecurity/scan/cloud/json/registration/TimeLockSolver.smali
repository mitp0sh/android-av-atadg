.class public Lde/gdata/mobilesecurity/scan/cloud/json/registration/TimeLockSolver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lde/gdata/mobilesecurity/scan/cloud/json/registration/ChallengeSolver;


# instance fields
.field a:Lde/gdata/mobilesecurity/scan/cloud/json/registration/RegistrationResponse$TimeLockParams;


# direct methods
.method public constructor <init>(Lde/gdata/mobilesecurity/scan/cloud/json/registration/RegistrationResponse$TimeLockParams;)V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lde/gdata/mobilesecurity/scan/cloud/json/registration/TimeLockSolver;->a:Lde/gdata/mobilesecurity/scan/cloud/json/registration/RegistrationResponse$TimeLockParams;

    .line 10
    return-void
.end method


# virtual methods
.method public solve()Ljava/lang/String;
    .locals 4

    .prologue
    .line 23
    iget-object v0, p0, Lde/gdata/mobilesecurity/scan/cloud/json/registration/TimeLockSolver;->a:Lde/gdata/mobilesecurity/scan/cloud/json/registration/RegistrationResponse$TimeLockParams;

    iget-wide v0, v0, Lde/gdata/mobilesecurity/scan/cloud/json/registration/RegistrationResponse$TimeLockParams;->t:J

    invoke-virtual {p0, v0, v1}, Lde/gdata/mobilesecurity/scan/cloud/json/registration/TimeLockSolver;->timeLock(J)Ljava/math/BigInteger;

    move-result-object v0

    .line 24
    iget-object v1, p0, Lde/gdata/mobilesecurity/scan/cloud/json/registration/TimeLockSolver;->a:Lde/gdata/mobilesecurity/scan/cloud/json/registration/RegistrationResponse$TimeLockParams;

    iget-wide v2, v1, Lde/gdata/mobilesecurity/scan/cloud/json/registration/RegistrationResponse$TimeLockParams;->p:J

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->xor(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    .line 26
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public timeLock(J)Ljava/math/BigInteger;
    .locals 7

    .prologue
    .line 13
    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    .line 14
    iget-object v0, p0, Lde/gdata/mobilesecurity/scan/cloud/json/registration/TimeLockSolver;->a:Lde/gdata/mobilesecurity/scan/cloud/json/registration/RegistrationResponse$TimeLockParams;

    iget-wide v2, v0, Lde/gdata/mobilesecurity/scan/cloud/json/registration/RegistrationResponse$TimeLockParams;->n:J

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    .line 15
    const/4 v0, 0x1

    :goto_0
    int-to-long v4, v0

    cmp-long v3, v4, p1

    if-gtz v3, :cond_0

    .line 16
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 15
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 19
    :cond_0
    return-object v1
.end method
