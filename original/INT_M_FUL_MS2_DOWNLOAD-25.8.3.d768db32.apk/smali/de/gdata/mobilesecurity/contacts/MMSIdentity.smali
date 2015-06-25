.class public Lde/gdata/mobilesecurity/contacts/MMSIdentity;
.super Lde/gdata/mobilesecurity/contacts/ContactData;
.source "SourceFile"


# static fields
.field public static final CONTENT_TYPE:Ljava/lang/String; = "de.gdata.mobilesecurity/mms_identity"

.field public static final PROFILE_ID:Ljava/lang/String; = "data2"

.field public static final SOURCE_ID:Ljava/lang/String; = "data1"


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Lde/gdata/mobilesecurity/contacts/ContactData;-><init>()V

    .line 13
    const-string v0, "de.gdata.mobilesecurity/mms_identity"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/contacts/MMSIdentity;->setMIMEType(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/contacts/MMSIdentity;->setSourceID(I)V

    .line 15
    invoke-virtual {p0, p2}, Lde/gdata/mobilesecurity/contacts/MMSIdentity;->setProfileID(I)V

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lde/gdata/mobilesecurity/contacts/ContactData;-><init>(Landroid/database/Cursor;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Lde/gdata/mobilesecurity/contacts/ContactData;)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lde/gdata/mobilesecurity/contacts/ContactData;-><init>()V

    .line 24
    const-string v0, "data2"

    invoke-virtual {p1, v0}, Lde/gdata/mobilesecurity/contacts/ContactData;->getIntData(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/contacts/MMSIdentity;->setProfileID(I)V

    .line 25
    const-string v0, "data1"

    invoke-virtual {p1, v0}, Lde/gdata/mobilesecurity/contacts/ContactData;->getIntData(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/contacts/MMSIdentity;->setSourceID(I)V

    .line 26
    const-string v0, "de.gdata.mobilesecurity/mms_identity"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/contacts/MMSIdentity;->setMIMEType(Ljava/lang/String;)V

    .line 27
    return-void
.end method


# virtual methods
.method public getProfileID()I
    .locals 1

    .prologue
    .line 38
    const-string v0, "data2"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/contacts/MMSIdentity;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getSourceID()I
    .locals 1

    .prologue
    .line 42
    const-string v0, "data2"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/contacts/MMSIdentity;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public setProfileID(I)V
    .locals 1

    .prologue
    .line 30
    const-string v0, "data2"

    invoke-virtual {p0, v0, p1}, Lde/gdata/mobilesecurity/contacts/MMSIdentity;->setData(Ljava/lang/String;I)V

    .line 31
    return-void
.end method

.method public setSourceID(I)V
    .locals 1

    .prologue
    .line 34
    const-string v0, "data1"

    invoke-virtual {p0, v0, p1}, Lde/gdata/mobilesecurity/contacts/MMSIdentity;->setData(Ljava/lang/String;I)V

    .line 35
    return-void
.end method
