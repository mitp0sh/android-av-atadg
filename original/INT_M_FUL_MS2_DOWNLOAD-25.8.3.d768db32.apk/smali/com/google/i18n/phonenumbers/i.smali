.class final enum Lcom/google/i18n/phonenumbers/i;
.super Lcom/google/i18n/phonenumbers/PhoneNumberUtil$Leniency;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 457
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$Leniency;-><init>(Ljava/lang/String;ILcom/google/i18n/phonenumbers/e;)V

    return-void
.end method


# virtual methods
.method a(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;Lcom/google/i18n/phonenumbers/PhoneNumberUtil;)Z
    .locals 1

    .prologue
    .line 460
    invoke-virtual {p3, p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->isValidNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, p2, p3}, Lcom/google/i18n/phonenumbers/b;->a(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;Lcom/google/i18n/phonenumbers/PhoneNumberUtil;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 462
    :cond_0
    const/4 v0, 0x0

    .line 464
    :goto_0
    return v0

    :cond_1
    invoke-static {p1, p3}, Lcom/google/i18n/phonenumbers/b;->a(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/i18n/phonenumbers/PhoneNumberUtil;)Z

    move-result v0

    goto :goto_0
.end method
