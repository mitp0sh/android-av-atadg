.class public Lde/gdata/mobilesecurity/privacy/ContactAccountOrigin;
.super Lde/gdata/mobilesecurity/database/MapBackedData;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 42
    invoke-direct {p0}, Lde/gdata/mobilesecurity/database/MapBackedData;-><init>()V

    .line 43
    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lde/gdata/mobilesecurity/privacy/ContactAccountOrigin;->setRawContactID(J)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lde/gdata/mobilesecurity/database/MapBackedData;-><init>(Landroid/database/Cursor;)V

    .line 48
    return-void
.end method


# virtual methods
.method public getAccountName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    const-string v0, "account_name"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/privacy/ContactAccountOrigin;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAccountType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    const-string v0, "account_type"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/privacy/ContactAccountOrigin;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getDataFields()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    new-instance v0, Lde/gdata/mobilesecurity/privacy/ContactAccountOrigin$Table;

    invoke-direct {v0}, Lde/gdata/mobilesecurity/privacy/ContactAccountOrigin$Table;-><init>()V

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/privacy/ContactAccountOrigin$Table;->getProjection()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRawContactID()J
    .locals 2

    .prologue
    .line 51
    const-string v0, "raw_contact_id"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/privacy/ContactAccountOrigin;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public isValid()Z
    .locals 4

    .prologue
    .line 80
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/ContactAccountOrigin;->getRawContactID()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAccountName(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 71
    const-string v0, "account_name"

    invoke-virtual {p0, v0, p1}, Lde/gdata/mobilesecurity/privacy/ContactAccountOrigin;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 72
    return-void
.end method

.method public setAccountType(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 67
    const-string v0, "account_type"

    invoke-virtual {p0, v0, p1}, Lde/gdata/mobilesecurity/privacy/ContactAccountOrigin;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 68
    return-void
.end method

.method public setRawContactID(J)V
    .locals 3

    .prologue
    .line 63
    const-string v0, "raw_contact_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lde/gdata/mobilesecurity/privacy/ContactAccountOrigin;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 64
    return-void
.end method
